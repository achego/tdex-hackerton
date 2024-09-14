import { NextFunction, Request, Response } from "express";
import catchError from "../../core/utils/error_handler";
import customResponse from "../data/models/custom_response";
import {
  Balance,
  Close,
  Message,
  MessageData,
  Offering,
  Order,
  Rfq,
  TbdexHttpClient,
} from "@tbdex/http-client";
import { BearerDid, DidDht } from "@web5/dids";
import {
  PresentationDefinitionV2,
  PresentationExchange,
} from "@web5/credentials";
import CustomRequest from "../data/models/custom_request";
import { logger, prisma } from "../../core/globals";
import CustomError from "../data/models/custom_error";
import { StatusCode } from "../../core/utils/enums";

// 🏦 AquaFinance Capital

// DID: did:dht:3fkz5ssfxbriwks3iy5nwys3q5kyx64ettp9wfn1yfekfkiguj1y

// Offerings:

// GHS to USDC

// NGN to KES

// KES to USD

// USD to KES

// 🏦 Flowback Financial

// DID: did:dht:zkp5gbsqgzn69b3y5dtt5nnpjtdq6sxyukpzo68npsf79bmtb9zy

// Offerings:

// USD to EUR

// EUR to USD

// USD to GBP

// USD to BTC

interface SelectedPFI {
  uri: string;
  name: string;
  description?: string;
  imageUrl?: string;
}

const selectedPFIs: SelectedPFI[] = [
  {
    uri: "did:dht:3fkz5ssfxbriwks3iy5nwys3q5kyx64ettp9wfn1yfekfkiguj1y",
    name: "🏦 AquaFinance Capital",
  },
  {
    uri: "did:dht:zkp5gbsqgzn69b3y5dtt5nnpjtdq6sxyukpzo68npsf79bmtb9zy",
    name: "🏦 Flowback Financial",
  },
  {
    uri: "did:dht:enwguxo8uzqexq14xupe4o9ymxw3nzeb9uug5ijkj9rhfbf1oy5y",
    name: "🏦 Vertex Liquid Assets",
  },
  {
    uri: "did:dht:ozn5c51ruo7z63u1h748ug7rw5p1mq3853ytrd5gatu9a8mm8f1o",
    name: " 🏦 Titanium Trust",
  },
];

const getOfferings = catchError(
  async (req: Request, res: Response, next: NextFunction) => {
    var pfiOfferings: Offering[] = [];

    for (const pfi of selectedPFIs) {
      const offerings = await TbdexHttpClient.getOfferings({ pfiDid: pfi.uri });
      pfiOfferings.push(...offerings);
    }

    return customResponse(res, {
      message: "Offerreings retrieved successfullty",
      data: {
        offerings: pfiOfferings,
        pfis: selectedPFIs,
      },
    });
  }
);

const requestQuote = catchError(
  async (req: CustomRequest, res: Response, next: NextFunction) => {
    const body: {
      pfiDid: string;
      offeringId: string;
      amount: string;
      payin_kind: string;
      payin_details: object;
      payout_kind: string;
      payout_details: object;
    } = req.body;
    const user = req.user;
    const portableDid = JSON.parse(user?.bearer_did ?? "");
    const userDid = await DidDht.import({ portableDid: portableDid });

    const offerings = await TbdexHttpClient.getOfferings({
      pfiDid: body.pfiDid,
    });
    const offering = offerings.find((off, ind) => {
      return off.metadata.id == body.offeringId;
    });

    if (!offering) {
      throw new CustomError("Offering not available", StatusCode.badRequest);
    }

    const credentials = await prisma.userCredentials.findMany({
      where: {
        userId: user?.id,
        issuer: body.pfiDid,
      },
    });

    const credentialsList = credentials.map((cred) => {
      return cred.credential;
    });

    //  PFI verify credentials
    const selectedCredentials = PresentationExchange.selectCredentials({
      vcJwts: credentialsList,
      presentationDefinition: offering.data
        .requiredClaims as PresentationDefinitionV2,
    });

    const rfq = Rfq.create({
      metadata: {
        from: userDid.uri,
        to: body.pfiDid,
        protocol: "1.0",
      },
      data: {
        offeringId: body.offeringId,
        payin: {
          amount: body.amount,
          kind: body.payin_kind,
          paymentDetails: body.payin_details,
        },
        payout: {
          kind: body.payout_kind,
          paymentDetails: body.payout_details,
        },
        claims: selectedCredentials,
      },
    });

    await rfq.verifyOfferingRequirements(offering);

    await rfq.sign(userDid);

    await TbdexHttpClient.createExchange(rfq);

    return customResponse(res, {
      message: "Offerreings retrieved successfully",
      data: rfq,
    });
  }
);

const getExchanges = catchError(
  async (req: CustomRequest, res: Response, next: NextFunction) => {
    const body: {
      pfiDid: string;
      rfq_exchange_id: string;
    } = req.body;
    const user = req.user;
    const portableDid = JSON.parse(user?.bearer_did ?? "");
    const userDid = await DidDht.import({ portableDid: portableDid });

    console.log("Polling exchanges again...");
    const allExchanges = [];
    for (const pfi of selectedPFIs) {
      const exchanges = await getSingleExchanges(userDid, pfi.uri);
      allExchanges.push(...exchanges);
    }
    return customResponse(res, {
      message: "Exchanges retrieved successfullty",
      data: allExchanges.reverse(),
    });
  }
);
const closeQuote = catchError(
  async (req: CustomRequest, res: Response, next: NextFunction) => {
    const body: {
      pfiDid: string;
      exchange_id: string;
      reason: string;
    } = req.body;
    const user = req.user;
    const portableDid = JSON.parse(user?.bearer_did ?? "");
    const userDid = await DidDht.import({ portableDid: portableDid });

    const close = Close.create({
      metadata: {
        from: userDid.uri,
        to: body.pfiDid,
        exchangeId: body.exchange_id,
        protocol: "1.0",
      },
      data: {
        reason: `${body.reason}(cancelled)`,
      },
    });

    await close.sign(userDid);
    await TbdexHttpClient.submitClose(close);

    return customResponse(res, {
      message: "Quote Closed",
      data: close,
    });
  }
);
const placeOrder = catchError(
  async (req: CustomRequest, res: Response, next: NextFunction) => {
    const body: {
      pfiDid: string;
      exchange_id: string;
    } = req.body;
    const user = req.user;
    const portableDid = JSON.parse(user?.bearer_did ?? "");
    const userDid = await DidDht.import({ portableDid: portableDid });

    const order = Order.create({
      metadata: {
        from: userDid.uri,
        to: body.pfiDid,
        exchangeId: body.exchange_id,
        protocol: "1.0",
      },
    });

    await order.sign(userDid);
    await TbdexHttpClient.submitOrder(order);

    return customResponse(res, {
      message: "Order Submitted",
      data: order,
    });
  }
);

const pfiController = {
  getOfferings,
  requestQuote,
  getExchanges,
  closeQuote,
  placeOrder,
};

export default pfiController;

const getSingleExchanges = async (userDid: BearerDid, pfiDid: string) => {
  const exchanges = await TbdexHttpClient.getExchanges({
    did: userDid,
    pfiDid: pfiDid,
  });

  return formatExchangesM(exchanges);
};

const formatExchangesM = (exchanges: Message[][]) => {
  const formattedMessages = exchanges.map((exchange) => {
    const latestMessage = exchange[exchange.length - 1];
    const rfqMessage = exchange.find((message) => message.kind === "rfq");
    const quoteMessage = exchange.find((message) => message.kind === "quote");

    const quoteData = quoteMessage?.data as any;
    const rfqData = rfqMessage?.data as any;

    const status = generateExchangeStatusValues(latestMessage);
    const fee = quoteData["payin"]?.["fee"];
    const payinAmount = quoteData["payin"]?.["amount"];
    const payoutPaymentDetails = (rfqMessage as any).privateData?.payout
      .paymentDetails as { me: "Hello" };
    return {
      id: latestMessage.metadata.exchangeId,
      fee: fee,
      payinAmount:
        (fee
          ? Number(payinAmount) + Number(fee)
          : Number(payinAmount)
        ).toString() || rfqData["payinAmount"],
      payinCurrency: quoteData["payin"]?.["currencyCode"] ?? null,
      payoutAmount: quoteData["payout"]?.["amount"] ?? null,
      payoutCurrency: quoteData["payout"]?.["currencyCode"],
      status,
      createdTime: rfqMessage?.createdAt,
      ...(latestMessage.kind === "quote" && {
        expirationTime: quoteData["expiresAt"] ?? null,
      }),
      from: "You",
      to: payoutPaymentDetails,
      pfiDid: rfqMessage?.metadata.to,
    };
  });

  return formattedMessages;
};

const generateExchangeStatusValues = (exchangeMessage: Message): string => {
  if (exchangeMessage instanceof Close) {
    if (
      exchangeMessage.data?.reason?.toLowerCase().includes("complete") ||
      exchangeMessage.data?.reason?.toLowerCase().includes("success")
    ) {
      return "completed";
    } else if (
      exchangeMessage.data?.reason?.toLowerCase().includes("expired")
    ) {
      return exchangeMessage.data?.reason?.toLowerCase();
    } else if (
      exchangeMessage.data?.reason?.toLowerCase().includes("cancelled")
    ) {
      return "cancelled";
    } else {
      return "failed";
    }
  }
  return "active";
};

import { NextFunction, Request, Response } from "express";
import catchError from "../../core/utils/error_handler";
import customResponse from "../data/models/custom_response";
import { Balance, Offering, TbdexHttpClient } from "@tbdex/http-client";
import { DidDht } from "@web5/dids";

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
];

const getOfferings = catchError(
  async (req: Request, res: Response, next: NextFunction) => {
    var pfiOfferings: Offering[] = [];

    for (const pfi of selectedPFIs) {
      const offerings = await TbdexHttpClient.getOfferings({ pfiDid: pfi.uri });
      pfiOfferings.push(...offerings);
    }
    // selectedPFIs.forEach(async (pfi) => {
    //   const offerings = await TbdexHttpClient.getOfferings({ pfiDid: pfi.uri });
    //   pfiOfferings.push(...offerings);
    // });

    return customResponse(res, {
      message: "Offerreings retrieved successfullty",
      data: {
        offerings: pfiOfferings,
        pfis: selectedPFIs,
      },
    });
  }
);

const pfiController = {
  getOfferings,
};

export default pfiController;

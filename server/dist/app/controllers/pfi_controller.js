var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
import catchError from "../../core/utils/error_handler.js";
import customResponse from "../data/models/custom_response.js";
import { Close, Order, Rfq, TbdexHttpClient, } from "@tbdex/http-client";
import { DidDht } from "@web5/dids";
import { PresentationExchange, } from "@web5/credentials";
import { prisma } from "../../core/globals.js";
import CustomError from "../data/models/custom_error.js";
import { StatusCode } from "../../core/utils/enums.js";
import balancerepository from "../repos/balance_repo.js";
import { $Enums } from "@prisma/client";
import authHelpers from "../helpers/auth_helpers.js";
const selectedPFIs = [
    {
        uri: "did:dht:3fkz5ssfxbriwks3iy5nwys3q5kyx64ettp9wfn1yfekfkiguj1y",
        name: "🏦 AquaFinance Capital",
    },
    {
        uri: "did:dht:zkp5gbsqgzn69b3y5dtt5nnpjtdq6sxyukpzo68npsf79bmtb9zy",
        name: "🏦 Flowback Financial",
    },
    // {
    //   uri: "did:dht:enwguxo8uzqexq14xupe4o9ymxw3nzeb9uug5ijkj9rhfbf1oy5y",
    //   name: "🏦 Vertex Liquid Assets",
    // },
    // {
    //   uri: "did:dht:ozn5c51ruo7z63u1h748ug7rw5p1mq3853ytrd5gatu9a8mm8f1o",
    //   name: " 🏦 Titanium Trust",
    // },
];
const getOfferings = catchError((req, res, next) => __awaiter(void 0, void 0, void 0, function* () {
    var pfiOfferings = [];
    for (const pfi of selectedPFIs) {
        const offerings = yield TbdexHttpClient.getOfferings({ pfiDid: pfi.uri });
        pfiOfferings.push(...offerings);
    }
    return customResponse(res, {
        message: "Offerreings retrieved successfullty",
        data: {
            offerings: pfiOfferings,
            pfis: selectedPFIs,
        },
    });
}));
const requestQuote = catchError((req, res, next) => __awaiter(void 0, void 0, void 0, function* () {
    var _a;
    const body = req.body;
    const user = req.user;
    const portableDid = JSON.parse(authHelpers.decrypt((_a = user === null || user === void 0 ? void 0 : user.bearer_did) !== null && _a !== void 0 ? _a : ""));
    const userDid = yield DidDht.import({ portableDid: portableDid });
    const offerings = yield TbdexHttpClient.getOfferings({
        pfiDid: body.pfiDid,
    });
    const offering = offerings.find((off, ind) => {
        return off.metadata.id == body.offeringId;
    });
    if (!offering) {
        throw new CustomError("Offering not available", StatusCode.badRequest);
    }
    const credentials = yield prisma.userCredentials.findMany({
        where: {
            userId: user === null || user === void 0 ? void 0 : user.id,
            issuer: body.pfiDid,
        },
    });
    const credentialsList = credentials.map((cred) => {
        return authHelpers.decrypt(cred.credential);
    });
    //  PFI verify credentials
    const selectedCredentials = PresentationExchange.selectCredentials({
        vcJwts: credentialsList,
        presentationDefinition: offering.data
            .requiredClaims,
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
    yield rfq.verifyOfferingRequirements(offering);
    yield rfq.sign(userDid);
    yield TbdexHttpClient.createExchange(rfq);
    return customResponse(res, {
        message: "Offerreings retrieved successfully",
        data: rfq,
    });
}));
const getExchanges = catchError((req, res, next) => __awaiter(void 0, void 0, void 0, function* () {
    var _a;
    const body = req.body;
    const user = req.user;
    const portableDid = JSON.parse(authHelpers.decrypt((_a = user === null || user === void 0 ? void 0 : user.bearer_did) !== null && _a !== void 0 ? _a : ""));
    const userDid = yield DidDht.import({ portableDid: portableDid });
    const allExchanges = [];
    for (const pfi of selectedPFIs) {
        const exchanges = yield getSingleExchanges(userDid, pfi.uri);
        allExchanges.push(...exchanges);
    }
    return customResponse(res, {
        message: "Exchanges retrieved successfullty",
        data: allExchanges.reverse(),
    });
}));
const closeQuote = catchError((req, res, next) => __awaiter(void 0, void 0, void 0, function* () {
    var _a;
    const body = req.body;
    const user = req.user;
    const portableDid = JSON.parse(authHelpers.decrypt((_a = user === null || user === void 0 ? void 0 : user.bearer_did) !== null && _a !== void 0 ? _a : ""));
    const userDid = yield DidDht.import({ portableDid: portableDid });
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
    yield close.sign(userDid);
    yield TbdexHttpClient.submitClose(close);
    return customResponse(res, {
        message: "Quote Closed",
        data: close,
    });
}));
const placeOrder = catchError((req, res, next) => __awaiter(void 0, void 0, void 0, function* () {
    var _a, _b;
    const body = req.body;
    const isWallet = Object.values(body.payin).includes("Wallet");
    const user = req.user;
    const portableDid = JSON.parse(authHelpers.decrypt((_a = user === null || user === void 0 ? void 0 : user.bearer_did) !== null && _a !== void 0 ? _a : ""));
    const userDid = yield DidDht.import({ portableDid: portableDid });
    const order = Order.create({
        metadata: {
            from: userDid.uri,
            to: body.pfiDid,
            exchangeId: body.exchange_id,
            protocol: "1.0",
        },
    });
    yield order.sign(userDid);
    yield TbdexHttpClient.submitOrder(order);
    if (isWallet) {
        const fee = (1.5 / 100) * body.amount;
        const amountToDeduct = body.amount + fee;
        yield balancerepository.updateBalance((_b = user === null || user === void 0 ? void 0 : user.id) !== null && _b !== void 0 ? _b : "", amountToDeduct, body.currency, $Enums.TransactionDirection.debit);
    }
    return customResponse(res, {
        message: "Order Submitted",
        data: order,
    });
}));
const pfiController = {
    getOfferings,
    requestQuote,
    getExchanges,
    closeQuote,
    placeOrder,
};
export default pfiController;
const getSingleExchanges = (userDid, pfiDid) => __awaiter(void 0, void 0, void 0, function* () {
    const exchanges = yield TbdexHttpClient.getExchanges({
        did: userDid,
        pfiDid: pfiDid,
    });
    return formatExchangesM(exchanges);
});
const formatExchangesM = (exchanges) => {
    const formattedMessages = exchanges.map((exchange) => {
        var _a, _b, _c, _d, _e, _f, _g, _h, _j, _k;
        const latestMessage = exchange[exchange.length - 1];
        const rfqMessage = exchange.find((message) => message.kind === "rfq");
        const quoteMessage = exchange.find((message) => message.kind === "quote");
        const quoteData = quoteMessage === null || quoteMessage === void 0 ? void 0 : quoteMessage.data;
        const rfqData = rfqMessage === null || rfqMessage === void 0 ? void 0 : rfqMessage.data;
        const status = generateExchangeStatusValues(latestMessage);
        const fee = (_a = quoteData["payin"]) === null || _a === void 0 ? void 0 : _a["fee"];
        const payinAmount = (_b = quoteData["payin"]) === null || _b === void 0 ? void 0 : _b["amount"];
        const payoutPaymentDetails = (_c = rfqMessage.privateData) === null || _c === void 0 ? void 0 : _c.payout.paymentDetails;
        const payinDetails = (_d = rfqMessage.privateData) === null || _d === void 0 ? void 0 : _d.payin.paymentDetails;
        return Object.assign(Object.assign({ id: latestMessage.metadata.exchangeId, fee: fee, payinAmount: (fee
                ? Number(payinAmount) + Number(fee)
                : Number(payinAmount)).toString() || rfqData["payinAmount"], payinCurrency: (_f = (_e = quoteData["payin"]) === null || _e === void 0 ? void 0 : _e["currencyCode"]) !== null && _f !== void 0 ? _f : null, payoutAmount: (_h = (_g = quoteData["payout"]) === null || _g === void 0 ? void 0 : _g["amount"]) !== null && _h !== void 0 ? _h : null, payoutCurrency: (_j = quoteData["payout"]) === null || _j === void 0 ? void 0 : _j["currencyCode"], status, createdTime: rfqMessage === null || rfqMessage === void 0 ? void 0 : rfqMessage.createdAt }, (latestMessage.kind === "quote" && {
            expirationTime: (_k = quoteData["expiresAt"]) !== null && _k !== void 0 ? _k : null,
        })), { from: payinDetails, to: payoutPaymentDetails, pfiDid: rfqMessage === null || rfqMessage === void 0 ? void 0 : rfqMessage.metadata.to });
    });
    return formattedMessages;
};
const generateExchangeStatusValues = (exchangeMessage) => {
    var _a, _b, _c, _d, _e, _f, _g, _h, _j, _k;
    if (exchangeMessage instanceof Close) {
        if (((_b = (_a = exchangeMessage.data) === null || _a === void 0 ? void 0 : _a.reason) === null || _b === void 0 ? void 0 : _b.toLowerCase().includes("complete")) ||
            ((_d = (_c = exchangeMessage.data) === null || _c === void 0 ? void 0 : _c.reason) === null || _d === void 0 ? void 0 : _d.toLowerCase().includes("success"))) {
            return "completed";
        }
        else if ((_f = (_e = exchangeMessage.data) === null || _e === void 0 ? void 0 : _e.reason) === null || _f === void 0 ? void 0 : _f.toLowerCase().includes("expired")) {
            return (_h = (_g = exchangeMessage.data) === null || _g === void 0 ? void 0 : _g.reason) === null || _h === void 0 ? void 0 : _h.toLowerCase();
        }
        else if ((_k = (_j = exchangeMessage.data) === null || _j === void 0 ? void 0 : _j.reason) === null || _k === void 0 ? void 0 : _k.toLowerCase().includes("cancelled")) {
            return "cancelled";
        }
        else {
            return "failed";
        }
    }
    return "active";
};

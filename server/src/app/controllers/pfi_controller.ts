import { NextFunction, Request, Response } from "express";
import catchError from "../../core/utils/error_handler";
import customResponse from "../data/models/custom_response";
import { Balance, TbdexHttpClient } from "@tbdex/http-client";
import { DidDht } from "@web5/dids";

const pfiDid = "did:dht:zkp5gbsqgzn69b3y5dtt5nnpjtdq6sxyukpzo68npsf79bmtb9zy";

const getOfferings = catchError(
  async (req: Request, res: Response, next: NextFunction) => {
    const offerings = await TbdexHttpClient.getOfferings({
      pfiDid: pfiDid,
    });

    // const customerDid = await DidDht.create({
    //   options: {
    //     publish: true,
    //   },
    // });

    // await Balance.create({
    //   data: {
    //     available: "1000",
    //     currencyCode: "ngn",
    //   },
    //   metadata: {
    //     from: pfiDid,
    //   },
    // });

    // const balances = await TbdexHttpClient.getBalances({
    //   did: customerDid,
    //   pfiDid: pfiDid,
    // });
    // Check Offerings expiry periad
    return customResponse(res, {
      message: "Balances rertireved success",
      data: offerings,
    });
  }
);

const pfiController = {
  getOfferings,
};

export default pfiController;

import { NextFunction, Request, Response } from "express";
import catchError from "../../core/utils/error_handler";
import customResponse from "../data/models/custom_response";
import { TbdexHttpClient } from "@tbdex/http-client";

const pfiDid = "did:dht:zkp5gbsqgzn69b3y5dtt5nnpjtdq6sxyukpzo68npsf79bmtb9zy";

const getOfferings = catchError(
  async (req: Request, res: Response, next: NextFunction) => {
    const offerings = await TbdexHttpClient.getOfferings({
      pfiDid: pfiDid,
    });
    return customResponse(res, { message: "Hello", data: offerings });
  }
);

const pfiController = {
  getOfferings,
};

export default pfiController;

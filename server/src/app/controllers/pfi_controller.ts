import { NextFunction, Request, Response } from "express";
import catchError from "../../core/utils/error_handler";
import customResponse from "../data/models/custom_response";
import * as httpServer from "@tbdex/http-server";

const pfiDid = "3fkz5ssfxbriwks3iy5nwys3q5kyx64ettp9wfn1yfekfkiguj1y";

const getOfferings = catchError(
  async (req: Request, res: Response, next: NextFunction) => {
    const offerings = await httpServer.TbdexHttpClient.getOfferings({ pfiDid: pfiDid });
    return customResponse(res, { message: "Hello", data: offerings });
  }
);

const pfiController = {
  getOfferings,
};

export default pfiController;

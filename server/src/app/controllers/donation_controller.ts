import { NextFunction, Request, Response } from "express";
import { $Enums, Prisma } from "@prisma/client";
import { ParsedQs } from "qs";
import catchError from "../../core/utils/error_handler.js";
import CustomRequest from "../data/models/custom_request.js";
import CustomError from "../data/models/custom_error.js";
import { StatusCode } from "../../core/utils/enums.js";
import userRepository from "../repos/user_repo.js";
import customResponse from "../data/models/custom_response.js";
import transactionRepository from "../repos/transaction_repository.js";
import balancerepository from "../repos/balance_repo.js";
import { logger } from "../../global_exports.js";
import { env, prisma } from "../../core/globals.js";
import authHelpers from "../helpers/auth_helpers.js";


interface Donations {
  symbol: string;
  title: string;
  icon: string;
  imageUrl: string;
}

const availableDonations: Donations[] = [
  {
    symbol: "usd",
    title: "United States Dollar",
    icon: "$",
    imageUrl:
      "https://cdn.freebiesupply.com/logos/large/2x/united-states-of-america-logo-png-transparent.png",
  },
  {
    symbol: "ngn",
    title: "Nigerian Naira",
    icon: "NGN",
    imageUrl:
      "https://cdn.freebiesupply.com/logos/large/2x/nigeriac-logo-png-transparent.png",
  },
];



const getAllDonations = catchError(
  async (req: CustomRequest, res: Response, next: NextFunction) => {
    const userParam = req.user;
    if (!userParam || !userParam.id) {
      throw new CustomError(
        "An error occured with this account",
        StatusCode.unauthorized
      );
    }
    const user = await userRepository.findById(userParam.id!);
    return customResponse(res, { data: user });
  }
);



const donationController = {
  getAllDonations,
};

export default donationController;

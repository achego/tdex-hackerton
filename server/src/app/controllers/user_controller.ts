import { NextFunction, Request, Response } from "express";
import { $Enums, Prisma } from "@prisma/client";
import { ParsedQs } from "qs";
import catchError from "../../core/utils/error_handler";
import CustomRequest from "../data/models/custom_request";
import CustomError from "../data/models/custom_error";
import { StatusCode } from "../../core/utils/enums";
import userRepository from "../repos/user_repo";
import customResponse from "../data/models/custom_response";
import transactionRepository from "../repos/transaction_repository";
import balancerepository from "../repos/balance_repo";

const getMe = catchError(
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

interface UsernameInputs extends ParsedQs {
  username: string;
}
const getUserfromUsername = catchError(
  async (req: CustomRequest, res: Response, next: NextFunction) => {
    const userParam = req.user;
    if (!userParam || !userParam.id) {
      throw new CustomError(
        "An error occured with this account",
        StatusCode.unauthorized
      );
    }

    const query: UsernameInputs = req.query as UsernameInputs;

    const isQueryEmpty =
      query == null ||
      Object.values(query).every(
        (val, ind) => val === null || val === undefined
      );

    if (isQueryEmpty) {
      throw new CustomError("Failed to get user data", StatusCode.badRequest, {
        dev_message: "The payload is empty or null",
      });
    }

    const user = await userRepository.findByUsername(query.username, undefined);
    if (!user) {
      throw new CustomError("user not found", StatusCode.badRequest);
    }
    return customResponse(res, { data: user });
  }
);

const getUserBalances = catchError(
  async (req: CustomRequest, res: Response, next: NextFunction) => {
    const userParam = req.user;
    if (!userParam || !userParam.id) {
      throw new CustomError(
        "An error occured with this account",
        StatusCode.unauthorized
      );
    }

    var data = await balancerepository.getUserBalances(userParam.id);
    if (!data) {
      await balancerepository.createUserBalance(userParam.id);
      data = await balancerepository.getUserBalances(userParam.id);
    }

    return customResponse(res, { data });
  }
);

interface GetTransactionsInput {
  type?: $Enums.TransactionType;
  page_size?: number;
  page?: number;
}
interface GetTransactionsParams {
  page_size?: number;
  page?: number;
}
const getTransactions = catchError(
  async (req: CustomRequest, res: Response, next: NextFunction) => {
    const txBody: GetTransactionsInput = req.body;
    const txParams: GetTransactionsParams = req.params;

    const userParam = req.user;
    if (!userParam || !userParam.id) {
      throw new CustomError("Authorization failed", StatusCode.unauthorized);
    }

    const trans = await transactionRepository.getTransactions(userParam.id, {
      pageSize: txBody.page_size,
      page: txBody.page,
      type: txBody.type,
    });

    customResponse(res, {
      message: "Transactions gotten succesfully",
      data: trans,
    });
  }
);
const userController = {
  getMe,
  getUserBalances,
  getTransactions,
  getUserfromUsername,
};

export default userController;

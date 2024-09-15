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
import { logger } from "../../global_exports";
import { prisma } from "../../core/globals";

interface CurrencyRate {
  symbol: string;
  title: string;
  rate: number;
  icon: string;
}
interface Currencies {
  symbol: string;
  title: string;
  icon: string;
  imageUrl: string;
}

const availableCurrencies: Currencies[] = [
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

const currencyRates: CurrencyRate[] = [
  {
    symbol: "ngn",
    title: "Nigerian Naira",
    rate: 1220.0,
    icon: "NGN",
  },
  {
    symbol: "usd",
    title: "United States Dollar",
    rate: 1.0,
    icon: "$",
  },
  {
    symbol: "gbp",
    title: "British Pound Sterling",
    rate: 0.84,
    icon: "£",
  },
  {
    symbol: "eur",
    title: "European Euro",
    rate: 0.96,
    icon: "€",
  },
  {
    symbol: "ghs",
    title: "Ghanaian Cedi",
    rate: 13.3,
    icon: "GHC",
  },
];

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
const createAndSaveCredential = catchError(
  async (req: CustomRequest, res: Response, next: NextFunction) => {
    const userParam = req.user;
    if (!userParam || !userParam.id) {
      throw new CustomError("Authorization failed", StatusCode.unauthorized);
    }

    const body: { issuer: string; type: string } = req.body;
    const userDid = JSON.parse(req.user?.bearer_did ?? "").uri;
    const user = req.user;
    const credential = await fetch(
      `https://mock-idv.tbddev.org/kcc?name=${"user?.full_name"}&country=${
        JSON.parse(user?.country ?? "").code
      }&did=${userDid}`
    );
    const cred = await credential.text();

    const resp = await prisma.userCredentials.create({
      data: {
        issuer: body.issuer,
        credential: cred,
        userId: userParam.id,
        type: body.type,
      },
    });

    // if (!resp) {
    //   throw new CustomError("An error occured", StatusCode.internalServerError);
    // }

    customResponse(res, {
      message: "credential saved",
      data: resp,
    });
  }
);
const getCredentials = catchError(
  async (req: CustomRequest, res: Response, next: NextFunction) => {
    const userParam = req.user;
    if (!userParam || !userParam.id) {
      throw new CustomError("Authorization failed", StatusCode.unauthorized);
    }

    const resp = await prisma.userCredentials.findMany({
      where: {
        userId: userParam.id,
      },
    });

    if (!resp) {
      throw new CustomError("An error occured", StatusCode.internalServerError);
    }

    customResponse(res, {
      message: "credential gotten",
      data: resp,
    });
  }
);

const getCurrencyrates = catchError(
  async (req: CustomRequest, res: Response, next: NextFunction) => {
    customResponse(res, {
      message: "Currency rates gotten",
      data: currencyRates,
    });
  }
);
const getAvailableCurrencies = catchError(
  async (req: CustomRequest, res: Response, next: NextFunction) => {
    customResponse(res, {
      message: "Currency  gotten",
      data: availableCurrencies,
    });
  }
);
const addCurrency = catchError(
  async (req: CustomRequest, res: Response, next: NextFunction) => {
    const user = req.user;
    const body: {
      currency: string;
    } = req.body;
    try {
      const userCurrency = await prisma.userBalance.findMany({
        where: {
          user_id: user?.id,
          currency: body.currency as any,
        },
      });

      if (userCurrency.length > 0) {
        throw new CustomError(
          "User already has balanece",
          StatusCode.badRequest
        );
      }
    } catch (error) {
      // throw new CustomError("User already has balanece", StatusCode.badRequest);
    }

    const resp = await balancerepository.createUserBalance(
      user?.id ?? "",
      body.currency as any
    );
    customResponse(res, {
      message: "Currency  gotten",
      data: resp,
    });
  }
);

const userController = {
  getMe,
  getUserBalances,
  getTransactions,
  getUserfromUsername,
  createAndSaveCredential,
  getCredentials,
  getCurrencyrates,
  getAvailableCurrencies,
  addCurrency,
};

export default userController;

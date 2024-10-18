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
    rate: 1635.2,
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
    rate: 0.77,
    icon: "£",
  },
  {
    symbol: "eur",
    title: "European Euro",
    rate: 0.92,
    icon: "€",
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
    const userDid = JSON.parse(
      authHelpers.decrypt(req.user?.bearer_did ?? "")
    ).uri;
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
        credential: authHelpers.encrypt(cred),
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

const ratePfi = catchError(
  async (req: CustomRequest, res: Response, next: NextFunction) => {
    const user = req.user;
    const body: {
      pfi_did: string;
      rate: number;
      quote_id: string;
      comment?: string;
    } = req.body;

    const resp = await prisma.pfiRatings.create({
      data: {
        pfi_did: body.pfi_did,
        rate: body.rate,
        rater_id: user?.id ?? "",
        quote_id: body.quote_id,
        rater_name: user?.user_name ?? "",
        comment: body.comment,
      },
    });

    customResponse(res, {
      message: "Rating Success",
      data: resp,
    });
  }
);
const getPfiRatings = catchError(
  async (req: CustomRequest, res: Response, next: NextFunction) => {
    const user = req.user;

    const resp = await prisma.pfiRatings.findMany({});

    customResponse(res, {
      message: "Ratings Gotten",
      data: resp,
    });
  }
);
const addDemoFunds = catchError(
  async (req: CustomRequest, res: Response, next: NextFunction) => {
    const user = req.user;

    const resp = await balancerepository.updateBalance(
      user?.id ?? "",
      100,
      $Enums.BalanceCurrency.usd,
      $Enums.TransactionDirection.credit
    );

    customResponse(res, {
      message: "Ratings Gotten",
      data: resp,
    });
  }
);

const swapCurrency = catchError(
  async (req: CustomRequest, res: Response, next: NextFunction) => {
    const user = req.user;
    const body: {
      from: string;
      to: string;
      amount: number;
    } = req.body;

    const userBalances = await balancerepository.getUserBalances(
      user?.id ?? ""
    );

    const fromBalance = userBalances?.find((bal) => bal.currency == body.from);

    const amountPayable = body.amount;

    if (Number(fromBalance?.balance) < amountPayable) {
      throw new CustomError(
        "You dont have enough balance",
        StatusCode.badRequest
      );
    }

    const fromRate = currencyRates.find((curr) => curr.symbol == body.from);

    const toRate = currencyRates.find((curr) => curr.symbol == body.to);
    if (!fromRate || !toRate) {
      throw new CustomError(
        "An error occured",
        StatusCode.internalServerError,
        { dev_message: "Balance not found" }
      );
    }
    const reieverBal =
      ((toRate?.rate ?? 0) / (fromRate?.rate ?? 1)) * amountPayable;
    const fee = authHelpers.getFee(reieverBal);
    const recieverValue = reieverBal - fee;

    await balancerepository.updateBalance(
      user?.id ?? "",
      amountPayable,
      fromRate.symbol as any,
      $Enums.TransactionDirection.debit
    );
    await balancerepository.updateBalance(
      user?.id ?? "",
      recieverValue,
      toRate.symbol as any,
      $Enums.TransactionDirection.credit
    );

    customResponse(res, {
      message: "Swap Successfull",
      // data: resp,
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
  ratePfi,
  getPfiRatings,
  addDemoFunds,
  swapCurrency,
  // sendByUsername,
};

export default userController;

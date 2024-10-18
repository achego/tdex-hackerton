var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
import { $Enums } from "@prisma/client";
import catchError from "../../core/utils/error_handler.js";
import CustomError from "../data/models/custom_error.js";
import { StatusCode } from "../../core/utils/enums.js";
import userRepository from "../repos/user_repo.js";
import customResponse from "../data/models/custom_response.js";
import transactionRepository from "../repos/transaction_repository.js";
import balancerepository from "../repos/balance_repo.js";
import { prisma } from "../../core/globals.js";
import authHelpers from "../helpers/auth_helpers.js";
const availableCurrencies = [
    {
        symbol: "usd",
        title: "United States Dollar",
        icon: "$",
        imageUrl: "https://cdn.freebiesupply.com/logos/large/2x/united-states-of-america-logo-png-transparent.png",
    },
    {
        symbol: "ngn",
        title: "Nigerian Naira",
        icon: "NGN",
        imageUrl: "https://cdn.freebiesupply.com/logos/large/2x/nigeriac-logo-png-transparent.png",
    },
];
const currencyRates = [
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
const getMe = catchError((req, res, next) => __awaiter(void 0, void 0, void 0, function* () {
    const userParam = req.user;
    if (!userParam || !userParam.id) {
        throw new CustomError("An error occured with this account", StatusCode.unauthorized);
    }
    const user = yield userRepository.findById(userParam.id);
    return customResponse(res, { data: user });
}));
const getUserfromUsername = catchError((req, res, next) => __awaiter(void 0, void 0, void 0, function* () {
    const userParam = req.user;
    if (!userParam || !userParam.id) {
        throw new CustomError("An error occured with this account", StatusCode.unauthorized);
    }
    const query = req.query;
    const isQueryEmpty = query == null ||
        Object.values(query).every((val, ind) => val === null || val === undefined);
    if (isQueryEmpty) {
        throw new CustomError("Failed to get user data", StatusCode.badRequest, {
            dev_message: "The payload is empty or null",
        });
    }
    const user = yield userRepository.findByUsername(query.username, undefined);
    if (!user) {
        throw new CustomError("user not found", StatusCode.badRequest);
    }
    return customResponse(res, { data: user });
}));
const getUserBalances = catchError((req, res, next) => __awaiter(void 0, void 0, void 0, function* () {
    const userParam = req.user;
    if (!userParam || !userParam.id) {
        throw new CustomError("An error occured with this account", StatusCode.unauthorized);
    }
    var data = yield balancerepository.getUserBalances(userParam.id);
    if (!data) {
        yield balancerepository.createUserBalance(userParam.id);
        data = yield balancerepository.getUserBalances(userParam.id);
    }
    return customResponse(res, { data });
}));
const getTransactions = catchError((req, res, next) => __awaiter(void 0, void 0, void 0, function* () {
    const txBody = req.body;
    const txParams = req.params;
    const userParam = req.user;
    if (!userParam || !userParam.id) {
        throw new CustomError("Authorization failed", StatusCode.unauthorized);
    }
    const trans = yield transactionRepository.getTransactions(userParam.id, {
        pageSize: txBody.page_size,
        page: txBody.page,
        type: txBody.type,
    });
    customResponse(res, {
        message: "Transactions gotten succesfully",
        data: trans,
    });
}));
const createAndSaveCredential = catchError((req, res, next) => __awaiter(void 0, void 0, void 0, function* () {
    var _a, _b, _c;
    const userParam = req.user;
    if (!userParam || !userParam.id) {
        throw new CustomError("Authorization failed", StatusCode.unauthorized);
    }
    const body = req.body;
    const userDid = JSON.parse(authHelpers.decrypt((_b = (_a = req.user) === null || _a === void 0 ? void 0 : _a.bearer_did) !== null && _b !== void 0 ? _b : "")).uri;
    const user = req.user;
    const credential = yield fetch(`https://mock-idv.tbddev.org/kcc?name=${"user?.full_name"}&country=${JSON.parse((_c = user === null || user === void 0 ? void 0 : user.country) !== null && _c !== void 0 ? _c : "").code}&did=${userDid}`);
    const cred = yield credential.text();
    const resp = yield prisma.userCredentials.create({
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
}));
const getCredentials = catchError((req, res, next) => __awaiter(void 0, void 0, void 0, function* () {
    const userParam = req.user;
    if (!userParam || !userParam.id) {
        throw new CustomError("Authorization failed", StatusCode.unauthorized);
    }
    const resp = yield prisma.userCredentials.findMany({
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
}));
const getCurrencyrates = catchError((req, res, next) => __awaiter(void 0, void 0, void 0, function* () {
    customResponse(res, {
        message: "Currency rates gotten",
        data: currencyRates,
    });
}));
const getAvailableCurrencies = catchError((req, res, next) => __awaiter(void 0, void 0, void 0, function* () {
    customResponse(res, {
        message: "Currency  gotten",
        data: availableCurrencies,
    });
}));
const addCurrency = catchError((req, res, next) => __awaiter(void 0, void 0, void 0, function* () {
    var _a;
    const user = req.user;
    const body = req.body;
    try {
        const userCurrency = yield prisma.userBalance.findMany({
            where: {
                user_id: user === null || user === void 0 ? void 0 : user.id,
                currency: body.currency,
            },
        });
        if (userCurrency.length > 0) {
            throw new CustomError("User already has balanece", StatusCode.badRequest);
        }
    }
    catch (error) {
        // throw new CustomError("User already has balanece", StatusCode.badRequest);
    }
    const resp = yield balancerepository.createUserBalance((_a = user === null || user === void 0 ? void 0 : user.id) !== null && _a !== void 0 ? _a : "", body.currency);
    customResponse(res, {
        message: "Currency  gotten",
        data: resp,
    });
}));
const ratePfi = catchError((req, res, next) => __awaiter(void 0, void 0, void 0, function* () {
    var _a, _b;
    const user = req.user;
    const body = req.body;
    const resp = yield prisma.pfiRatings.create({
        data: {
            pfi_did: body.pfi_did,
            rate: body.rate,
            rater_id: (_a = user === null || user === void 0 ? void 0 : user.id) !== null && _a !== void 0 ? _a : "",
            quote_id: body.quote_id,
            rater_name: (_b = user === null || user === void 0 ? void 0 : user.user_name) !== null && _b !== void 0 ? _b : "",
            comment: body.comment,
        },
    });
    customResponse(res, {
        message: "Rating Success",
        data: resp,
    });
}));
const getPfiRatings = catchError((req, res, next) => __awaiter(void 0, void 0, void 0, function* () {
    const user = req.user;
    const resp = yield prisma.pfiRatings.findMany({});
    customResponse(res, {
        message: "Ratings Gotten",
        data: resp,
    });
}));
const addDemoFunds = catchError((req, res, next) => __awaiter(void 0, void 0, void 0, function* () {
    var _a;
    const user = req.user;
    const resp = yield balancerepository.updateBalance((_a = user === null || user === void 0 ? void 0 : user.id) !== null && _a !== void 0 ? _a : "", 100, $Enums.BalanceCurrency.usd, $Enums.TransactionDirection.credit);
    customResponse(res, {
        message: "Ratings Gotten",
        data: resp,
    });
}));
const swapCurrency = catchError((req, res, next) => __awaiter(void 0, void 0, void 0, function* () {
    var _a, _b, _c, _d, _e;
    const user = req.user;
    const body = req.body;
    const userBalances = yield balancerepository.getUserBalances((_a = user === null || user === void 0 ? void 0 : user.id) !== null && _a !== void 0 ? _a : "");
    const fromBalance = userBalances === null || userBalances === void 0 ? void 0 : userBalances.find((bal) => bal.currency == body.from);
    const amountPayable = body.amount;
    if (Number(fromBalance === null || fromBalance === void 0 ? void 0 : fromBalance.balance) < amountPayable) {
        throw new CustomError("You dont have enough balance", StatusCode.badRequest);
    }
    const fromRate = currencyRates.find((curr) => curr.symbol == body.from);
    const toRate = currencyRates.find((curr) => curr.symbol == body.to);
    if (!fromRate || !toRate) {
        throw new CustomError("An error occured", StatusCode.internalServerError, { dev_message: "Balance not found" });
    }
    const reieverBal = (((_b = toRate === null || toRate === void 0 ? void 0 : toRate.rate) !== null && _b !== void 0 ? _b : 0) / ((_c = fromRate === null || fromRate === void 0 ? void 0 : fromRate.rate) !== null && _c !== void 0 ? _c : 1)) * amountPayable;
    const fee = authHelpers.getFee(reieverBal);
    const recieverValue = reieverBal - fee;
    yield balancerepository.updateBalance((_d = user === null || user === void 0 ? void 0 : user.id) !== null && _d !== void 0 ? _d : "", amountPayable, fromRate.symbol, $Enums.TransactionDirection.debit);
    yield balancerepository.updateBalance((_e = user === null || user === void 0 ? void 0 : user.id) !== null && _e !== void 0 ? _e : "", recieverValue, toRate.symbol, $Enums.TransactionDirection.credit);
    customResponse(res, {
        message: "Swap Successfull",
        // data: resp,
    });
}));
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

var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
import { prisma } from "../../core/globals.js";
import { $Enums } from "@prisma/client";
import CustomError from "../data/models/custom_error.js";
import { StatusCode } from "../../core/utils/enums.js";
const createUserBalance = (id, currency, option) => __awaiter(void 0, void 0, void 0, function* () {
    var _a;
    const omit = {};
    (_a = option === null || option === void 0 ? void 0 : option.include) === null || _a === void 0 ? void 0 : _a.forEach((key) => {
        delete omit[key];
    });
    const theCurrency = currency !== null && currency !== void 0 ? currency : $Enums.BalanceCurrency.usd;
    const balance = yield prisma.userBalance.create({
        data: {
            user_id: id,
            currency: theCurrency,
            type: $Enums.BalanceType.fiat,
            user_currency: `${id}-${theCurrency}`,
        },
        omit: omit,
    });
    return balance;
});
const getUserBalances = (id, option) => __awaiter(void 0, void 0, void 0, function* () {
    var _a, _b;
    const omit = {
        created_at: true,
        id: true,
        user_id: true,
    };
    (_a = option === null || option === void 0 ? void 0 : option.include) === null || _a === void 0 ? void 0 : _a.forEach((key) => {
        delete omit[key];
    });
    (_b = option === null || option === void 0 ? void 0 : option.omit) === null || _b === void 0 ? void 0 : _b.forEach((key) => {
        omit[key] = true;
    });
    const balance = yield prisma.userBalance.findMany({
        where: { user_id: id },
        omit: omit,
    });
    return balance;
});
const updateBalance = (user_id, amount, currency, 
/** of type $Enums.TransactionDirection */
type, option) => __awaiter(void 0, void 0, void 0, function* () {
    var _a;
    const prismaInstance = (_a = option === null || option === void 0 ? void 0 : option.tx) !== null && _a !== void 0 ? _a : prisma;
    const balance = yield prismaInstance.userBalance.findFirst({
        where: { user_id: user_id, currency: currency },
    });
    if (!balance) {
        throw new CustomError("An error occured", StatusCode.internalServerError);
    }
    if (type == $Enums.TransactionDirection.debit &&
        Number(balance === null || balance === void 0 ? void 0 : balance.balance) < amount) {
        throw new CustomError("You dont have enough balance, please top up to continue", StatusCode.internalServerError);
    }
    const newBal = _getNewBalance(Number(balance.balance), amount, type);
    const newBalance = yield prismaInstance.userBalance.update({
        data: { balance: newBal.toString(), updated_at: new Date(Date.now()) },
        where: {
            user_id: user_id,
            currency: currency,
            user_currency: `${user_id}-${currency}`,
        },
    });
    return { prevBalance: balance, newBalance: newBalance };
});
const balancerepository = {
    createUserBalance,
    getUserBalances,
    updateBalance,
};
export default balancerepository;
const _getNewBalance = (balance, amount, type) => {
    var newbalance;
    switch (type) {
        case $Enums.TransactionDirection.credit:
            newbalance = balance + amount;
            break;
        case $Enums.TransactionDirection.debit:
            newbalance = balance - amount;
            break;
        default:
            newbalance = balance - amount;
            break;
    }
    return newbalance;
};

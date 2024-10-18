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
const globalOmit = {};
const createTransaction = (transaction, option) => __awaiter(void 0, void 0, void 0, function* () {
    var _a, _b;
    const omit = Object.assign({}, globalOmit);
    (_a = option === null || option === void 0 ? void 0 : option.include) === null || _a === void 0 ? void 0 : _a.forEach((key) => {
        delete omit[key];
    });
    // validateTransaction(transaction);
    const prismaInstance = (_b = option === null || option === void 0 ? void 0 : option.tx) !== null && _b !== void 0 ? _b : prisma;
    const newTransaction = yield prismaInstance.transaction.create({
        data: transaction,
    });
    return newTransaction;
});
const updateTransaction = (id, userId, transaction, option) => __awaiter(void 0, void 0, void 0, function* () {
    var _a, _b;
    const omit = Object.assign({}, globalOmit);
    (_a = option === null || option === void 0 ? void 0 : option.include) === null || _a === void 0 ? void 0 : _a.forEach((key) => {
        delete omit[key];
    });
    const prismaInstance = (_b = option === null || option === void 0 ? void 0 : option.tx) !== null && _b !== void 0 ? _b : prisma;
    const newTransaction = yield prismaInstance.transaction.update({
        data: Object.assign(Object.assign({}, transaction), { updated_at: new Date(Date.now()) }),
        where: { id: id, user_id: userId },
    });
    return newTransaction;
});
const getTransactions = (userId, params, option) => __awaiter(void 0, void 0, void 0, function* () {
    var _a, _b, _c, _d, _e, _f, _g;
    const omit = Object.assign({}, globalOmit);
    (_a = option === null || option === void 0 ? void 0 : option.include) === null || _a === void 0 ? void 0 : _a.forEach((key) => {
        delete omit[key];
    });
    const prismaInstance = (_b = option === null || option === void 0 ? void 0 : option.tx) !== null && _b !== void 0 ? _b : prisma;
    const take = (_c = params === null || params === void 0 ? void 0 : params.pageSize) !== null && _c !== void 0 ? _c : 50;
    const skip = (((_d = params === null || params === void 0 ? void 0 : params.page) !== null && _d !== void 0 ? _d : 1) - 1) * take;
    // prisma.transaction.
    const where = {
        user_id: userId,
        type: (_e = params === null || params === void 0 ? void 0 : params.type) !== null && _e !== void 0 ? _e : undefined,
    };
    const count = yield prismaInstance.transaction.count({
        where,
    });
    const total_pages = Math.ceil(count / take);
    const last_page = ((_f = params === null || params === void 0 ? void 0 : params.page) !== null && _f !== void 0 ? _f : 1) == total_pages;
    const transactions = yield prismaInstance.transaction.findMany({
        where,
        take: take,
        skip: skip,
        orderBy: {
            created_at: "desc",
        },
        omit: {
            third_party_data: true,
            user_id: true,
            deleted_at: true,
        },
    });
    return {
        count,
        total_pages,
        current_page: (_g = params === null || params === void 0 ? void 0 : params.page) !== null && _g !== void 0 ? _g : 1,
        page_size: take,
        last_page,
        transactions,
    };
});
const transactionRepository = {
    createTransaction,
    updateTransaction,
    getTransactions,
};
export default transactionRepository;

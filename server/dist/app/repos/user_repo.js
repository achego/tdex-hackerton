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
import balancerepository from "./balance_repo.js";
const globalOmit = {
    password: true,
    deleted_at: true,
};
const createUser = (user, option) => __awaiter(void 0, void 0, void 0, function* () {
    // const omit = { ...globalOmit };
    const newuser = yield prisma.user.create({
        data: user,
        // omit: { ...omit },
    });
    yield balancerepository.createUserBalance(newuser.id);
    return newuser;
});
const findById = (id, option) => __awaiter(void 0, void 0, void 0, function* () {
    var _a;
    const omit = Object.assign({}, globalOmit);
    (_a = option === null || option === void 0 ? void 0 : option.include) === null || _a === void 0 ? void 0 : _a.forEach((key) => {
        delete omit[key];
    });
    const user = yield prisma.user.findUnique({
        where: { id },
        omit,
    });
    return user;
});
const findByEmail = (email, option) => __awaiter(void 0, void 0, void 0, function* () {
    var _a;
    const omit = Object.assign({}, globalOmit);
    (_a = option === null || option === void 0 ? void 0 : option.include) === null || _a === void 0 ? void 0 : _a.forEach((key) => {
        delete omit[key];
    });
    const user = yield prisma.user.findUnique({
        where: { email },
        omit: Object.assign({}, omit),
    });
    return user;
});
const findByPhone = (phone, option) => __awaiter(void 0, void 0, void 0, function* () {
    var _a;
    const omit = Object.assign({}, globalOmit);
    (_a = option === null || option === void 0 ? void 0 : option.include) === null || _a === void 0 ? void 0 : _a.forEach((key) => {
        delete omit[key];
    });
    const user = yield prisma.user.findUnique({
        where: { phone },
        omit,
    });
    return user;
});
const findByUsername = (user_name, option, extra) => __awaiter(void 0, void 0, void 0, function* () {
    var _a, _b;
    const omit = Object.assign({}, globalOmit);
    (_a = option === null || option === void 0 ? void 0 : option.include) === null || _a === void 0 ? void 0 : _a.forEach((key) => {
        delete omit[key];
    });
    const onlyUser = (_b = extra === null || extra === void 0 ? void 0 : extra.onlyUser) !== null && _b !== void 0 ? _b : true;
    const user = yield prisma.user.findUnique({
        where: { user_name },
        omit,
    });
    return user;
});
const userRepository = {
    createUser,
    findById,
    findByEmail,
    findByPhone,
    findByUsername,
};
export default userRepository;

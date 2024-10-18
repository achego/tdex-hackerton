var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
import catchError from "../../core/utils/error_handler.js";
import CustomError from "../data/models/custom_error.js";
import authHelpers from "../helpers/auth_helpers.js";
import userRepository from "../repos/user_repo.js";
import { StatusCode } from "../../core/utils/enums.js";
import { logger } from "../../global_exports.js";
const checkAuth = catchError((req, res, next) => __awaiter(void 0, void 0, void 0, function* () {
    const authorization = req.headers.authorization;
    if (!authorization ||
        !authorization.startsWith("Bearer") ||
        authorization.split(" ").length < 2) {
        throw new CustomError("authentication failed", StatusCode.unauthorized);
    }
    const token = authorization.split(" ")[1];
    const userId = authHelpers.verifyJwt(token).payload;
    logger(userId, "The User");
    const user = yield userRepository.findById(userId);
    // logger(user, "The user");
    if (!user) {
        throw new CustomError("An error occured with this account", StatusCode.unauthorized);
    }
    req.user = user;
    next();
}));
const authMiddleWares = {
    checkAuth,
};
export default authMiddleWares;

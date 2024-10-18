var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
// import { env } from "../../core/globals.js";
import bcrypt from "bcrypt";
import jwt from "jsonwebtoken";
import { StatusCode } from "../../core/utils/enums.js";
import CustomError from "../data/models/custom_error.js";
import userRepository from "../repos/user_repo.js";
import crypto from "crypto";
import { logger } from "../../global_exports.js";
import { env } from "../../core/globals.js";
// const env = new Environment();
const hashPassword = (password) => {
    const salt = bcrypt.genSaltSync();
    const hashedPassword = bcrypt.hashSync(password, salt);
    return hashedPassword;
};
const createJwt = (payload, ...[expiresIn = env.jwtExpiresIn]) => {
    return jwt.sign({ payload }, env.jwtSecret, { expiresIn: expiresIn });
};
const verifyJwt = (token) => {
    try {
        const payload = jwt.verify(token, env.jwtSecret);
        return payload;
    }
    catch (error) {
        const messages = _handleJwtErrors(error);
        throw new CustomError(messages.message, StatusCode.unauthorized, {
            dev_message: messages.devMessage,
        });
    }
};
const _handleJwtErrors = (err) => {
    switch (err.name) {
        case "JsonWebTokenError":
            return {
                message: "An error occurred authentication user",
                devMessage: "jwt malformed",
            };
        case "TokenExpiredError":
            return {
                message: "Your session has expired, please login to continue",
                devMessage: "jwt expired",
            };
        case "NotBeforeError":
            return {
                message: "Your session has expired, please login to continue",
                devMessage: "jwt not active",
            };
        default:
            return {
                message: "An unknown error occured authorizing you",
                devMessage: "jwt error not captured",
            };
    }
};
const validatePin = (user_id, password) => __awaiter(void 0, void 0, void 0, function* () {
    var _a;
    const user = yield userRepository.findById(user_id, {
        include: ["password"],
    });
    const passwordMatches = yield bcrypt.compare(password, (_a = user === null || user === void 0 ? void 0 : user.password) !== null && _a !== void 0 ? _a : "");
    if (!user || !passwordMatches) {
        throw new CustomError("Pin validation failed", StatusCode.unauthorized);
    }
});
const encrypt = (text) => {
    logger(Buffer.from(env.encryptionKey), "THis");
    let cipher = crypto.createCipheriv(env.algorithm, Buffer.from(env.encryptionKey), env.iv);
    let encrypted = cipher.update(text);
    encrypted = Buffer.concat([encrypted, cipher.final()]);
    return encrypted.toString("hex");
};
const decrypt = (encryptedText) => {
    let iv = Buffer.from(Buffer.from(env.iv).toString("hex"), "hex");
    let encText = Buffer.from(encryptedText, "hex");
    let decipher = crypto.createDecipheriv(env.algorithm, Buffer.from(env.encryptionKey), iv);
    let decrypted = decipher.update(encText);
    decrypted = Buffer.concat([decrypted, decipher.final()]);
    return decrypted.toString();
};
const getFee = (amount) => {
    const fee = (1.5 / 100) * amount;
    return fee;
};
const authHelpers = {
    hashPassword,
    createJwt,
    verifyJwt,
    validatePin,
    encrypt,
    decrypt,
    getFee,
};
export default authHelpers;

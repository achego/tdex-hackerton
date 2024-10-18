var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
import { env, logger } from "../../core/globals.js";
import CustomError from "../data/models/custom_error.js";
import { StatusCode } from "../../core/utils/enums.js";
import { ZodError } from "zod";
const handleGlobalError = (err, req, res, next) => __awaiter(void 0, void 0, void 0, function* () {
    const error = _convertError(err);
    if (env.isDev) {
        return _sendErrorResponse(error, res);
    }
    logger(err.stack, "The fatal error Stack", 2000);
    logger(error.stack, "The fatal error Stack", 2000);
    return _sendErrorResponse(error, res, {
        omit: ["stack", "name"],
    });
});
const errorController = {
    handleGlobalError,
};
export default errorController;
function _sendErrorResponse(err, res, option) {
    var _a, _b;
    const message = err.message;
    // const stack_custom = err.stack_custom;
    const stack = (_a = err.stack_custom) !== null && _a !== void 0 ? _a : err.stack;
    const dev_message = err.dev_message;
    const status = "failed";
    let statusCode = err.statusCode;
    let sever_dev_message = err.sever_dev_message;
    let name = err.name;
    let errorJson = {
        status,
        is_ok: false,
        message,
        dev_message,
        name,
        stack,
        sever_dev_message,
    };
    const result = Object.assign({}, errorJson);
    (_b = option === null || option === void 0 ? void 0 : option.omit) === null || _b === void 0 ? void 0 : _b.forEach((key) => {
        delete result[key];
    });
    res.status(statusCode).json(result);
}
function _convertError(err) {
    var _a, _b;
    if (err instanceof CustomError) {
        return err;
    }
    if (err instanceof ZodError) {
        const error = (_b = (_a = err.errors.at(0)) === null || _a === void 0 ? void 0 : _a.message) !== null && _b !== void 0 ? _b : "";
        return new CustomError(error, StatusCode.badRequest, {
            stack_custom: err.stack,
        });
    }
    return new CustomError("An unknown error occured ", StatusCode.internalServerError, { name: err.name, sever_dev_message: err.message, stack_custom: err.stack });
}

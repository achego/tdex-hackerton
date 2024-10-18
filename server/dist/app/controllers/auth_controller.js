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
import customResponse from "../data/models/custom_response.js";
import { DidDht } from "@web5/dids";
import userRepository from "../repos/user_repo.js";
import CustomError from "../data/models/custom_error.js";
import { StatusCode } from "../../core/utils/enums.js";
import authHelpers from "../helpers/auth_helpers.js";
import bcrypt from "bcrypt";
const signUp = catchError((req, res, next) => __awaiter(void 0, void 0, void 0, function* () {
    var _a;
    const requ = req.body;
    const userDidCreate = yield DidDht.create({
        options: {
            publish: true,
        },
    });
    const userDid = yield userDidCreate.export();
    const body = Object.assign({ bearer_did: authHelpers.encrypt(JSON.stringify(userDid)) }, requ);
    const newUser = yield userRepository.createUser(body);
    if (!newUser) {
        throw new CustomError("An error occured registering user", StatusCode.badRequest);
    }
    const token = authHelpers.createJwt((_a = newUser.id) !== null && _a !== void 0 ? _a : "");
    customResponse(res, {
        code: StatusCode.created,
        message: "User registration successfull",
        data: Object.assign(Object.assign({}, newUser), { token }),
    });
}));
const login = catchError((req, res, next) => __awaiter(void 0, void 0, void 0, function* () {
    var _a, _b;
    const body = req.body;
    if (!req.body) {
        throw new CustomError("No argument was passed", StatusCode.badRequest);
    }
    const user = yield userRepository.findByEmail(body.email, {
        include: ["password"],
    });
    const passwordMatches = yield bcrypt.compare(body.password, (_a = user === null || user === void 0 ? void 0 : user.password) !== null && _a !== void 0 ? _a : "");
    if (!user || !passwordMatches) {
        throw new CustomError("incorrect email or password", 400);
    }
    const token = authHelpers.createJwt((_b = user.id) !== null && _b !== void 0 ? _b : "");
    customResponse(res, { message: "User Login successfull", data: { token } });
}));
const verifyUniqueAvailability = catchError((req, res, next) => __awaiter(void 0, void 0, void 0, function* () {
    const body = req.body;
    const isBodyEmpty = body == null ||
        Object.values(body).every((val, ind) => val === null || val === undefined);
    if (isBodyEmpty) {
        throw new CustomError("Failed to get user data", StatusCode.badRequest, {
            dev_message: "The payload is empty",
        });
    }
    var response = {};
    if (body.email) {
        // const form = new Form({ email: body.email });
        const user = yield userRepository.findByEmail(body.email);
        user ? (response.email = true) : (response.email = false);
    }
    if (body.phone) {
        const user = yield userRepository.findByPhone(body.phone);
        user ? (response.phone = true) : (response.phone = false);
    }
    if (body.user_name) {
        const user = yield userRepository.findByUsername(body.user_name);
        user ? (response.user_name = true) : (response.user_name = false);
    }
    customResponse(res, { data: response });
}));
const authController = {
    signUp,
    login,
    verifyUniqueAvailability,
};
export default authController;

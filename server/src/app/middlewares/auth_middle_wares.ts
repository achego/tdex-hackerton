import { NextFunction, Request, Response } from "express";
import catchError from "../../core/utils/error_handler.js";
import CustomError from "../data/models/custom_error.js";
import authHelpers from "../helpers/auth_helpers.js";
import userRepository from "../repos/user_repo.js";
import { StatusCode } from "../../core/utils/enums.js";
import CustomRequest from "../data/models/custom_request.js";
import { logger } from "../../global_exports.js";
import bcrypt from "bcrypt";

const checkAuth = catchError(
  async (req: CustomRequest, res: Response, next: NextFunction) => {
    const authorization = req.headers.authorization;
    logger(authorization, "THe Auth");
    if (
      !authorization ||
      !authorization.startsWith("Bearer") ||
      authorization.split(" ").length < 2
    ) {
      throw new CustomError("authentication failed", StatusCode.unauthorized);
    }

    const token = authorization.split(" ")[1];
    const userId = authHelpers.verifyJwt(token).payload;

    logger(userId, "The User");

    const user = await userRepository.findById(userId);

    // logger(user, "The user");
    if (!user) {
      throw new CustomError(
        "An error occured with this account",
        StatusCode.unauthorized
      );
    }

    if (user.is_account_deleted) {
      throw new CustomError("An error occured", StatusCode.badRequest);
    }
    req.user = user;
    next();
  }
);
const validatePin = catchError(
  async (req: CustomRequest, res: Response, next: NextFunction) => {
    const body: { pin: number } = req.body;
    if (!req.body) {
      throw new CustomError("No argument was passed", StatusCode.badRequest);
    }
    const userParam = req.user;
    if (!userParam || !userParam.id) {
      throw new CustomError(
        "An error occured with this account",
        StatusCode.unauthorized
      );
    }

    if (!userParam.pin) {
      next();
      return;
    }
    const pinMatched = await bcrypt.compare(
      body.pin.toString(),
      userParam.pin!
    );
    if (!pinMatched) {
      throw new CustomError(
        "Please enter a correct pin to continue",
        StatusCode.badRequest
      );
    }
    req.user = userParam;
    next();
  }
);

const authMiddleWares = {
  checkAuth,
  validatePin,
};

export default authMiddleWares;

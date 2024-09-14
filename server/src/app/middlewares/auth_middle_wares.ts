import { NextFunction, Request, Response } from "express";
import catchError from "../../core/utils/error_handler";
import CustomError from "../data/models/custom_error";
import authHelpers from "../helpers/auth_helpers";
import userRepository from "../repos/user_repo";
import { StatusCode } from "../../core/utils/enums";
import CustomRequest from "../data/models/custom_request";
import { logger } from "../../global_exports";

const checkAuth = catchError(
  async (req: CustomRequest, res: Response, next: NextFunction) => {
    const authorization = req.headers.authorization;
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
    req.user = user;
    next();
  }
);

const authMiddleWares = {
  checkAuth,
};

export default authMiddleWares;

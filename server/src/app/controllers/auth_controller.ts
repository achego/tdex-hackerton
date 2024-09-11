import { NextFunction, Request, Response } from "express";
import catchError from "../../core/utils/error_handler";
import customResponse from "../data/models/custom_response";
import { DidDht } from "@web5/dids";
import userRepository from "../repos/user_repo";
import CustomError from "../data/models/custom_error";
import { StatusCode } from "../../core/utils/enums";
import authHelpers from "../helpers/auth_helpers";
import { Prisma } from "@prisma/client";

import bcrypt from "bcrypt";

const signUp = catchError(
  async (req: Request, res: Response, next: NextFunction) => {
    const requ: {
      email: string;
      password: string;
      full_name: string;
      country: string;
      user_name: string;
      phone: string;
    } = req.body;

    const userDid = await DidDht.create({
      options: {
        publish: true,
      },
    });
    const body: Prisma.UserCreateInput = {
      bearer_did: JSON.stringify(userDid),
      ...requ,
    };

    const newUser = await userRepository.createUser(body);

    if (!newUser) {
      throw new CustomError(
        "An error occured registering user",
        StatusCode.badRequest
      );
    }
    const token = authHelpers.createJwt(newUser.id ?? "");
    customResponse(res, {
      code: StatusCode.created,
      message: "User registration successfull",
      data: { ...newUser, token },
    });
  }
);

const login = catchError(
  async (req: Request, res: Response, next: NextFunction) => {
    const body = req.body;
    if (!req.body) {
      throw new CustomError("No argument was passed", StatusCode.badRequest);
    }
    const user = await userRepository.findByEmail(body.email, {
      include: ["password"],
    });
    const passwordMatches = await bcrypt.compare(
      body.password,
      user?.password ?? ""
    );
    if (!user || !passwordMatches) {
      throw new CustomError("incorrect email or password", 400);
    }
    const token = authHelpers.createJwt(user.id ?? "");
    customResponse(res, { message: "User Login successfull", data: { token } });
  }
);

const authController = {
  signUp,
  login,
};

export default authController;

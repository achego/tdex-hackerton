import { NextFunction, Request, Response } from "express";
import catchError from "../../core/utils/error_handler.js";
import customResponse from "../data/models/custom_response.js";
import { DidDht } from "@web5/dids";
import userRepository from "../repos/user_repo.js";
import CustomError from "../data/models/custom_error.js";
import { StatusCode } from "../../core/utils/enums.js";
import authHelpers from "../helpers/auth_helpers.js";
import { Prisma } from "@prisma/client";

import bcrypt from "bcrypt";
import CustomRequest from "../data/models/custom_request.js";

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

    const userDidCreate = await DidDht.create({
      options: {
        publish: true,
      },
    });

    const userDid = await userDidCreate.export();

    const body: Prisma.UserCreateInput = {
      bearer_did: authHelpers.encrypt(JSON.stringify(userDid)),
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

const createPin = catchError(
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

    const resp = await userRepository.createPin(userParam.id, body.pin);
    if (!resp) {
      throw new CustomError(
        "An error occurred",
        StatusCode.internalServerError
      );
    }

    customResponse(res, {
      code: StatusCode.created,
      message: "Pin created successfully",
    });
  }
);
const deleteAccount = catchError(
  async (req: CustomRequest, res: Response, next: NextFunction) => {
    const userParam = req.user;
    if (!userParam || !userParam.id) {
      throw new CustomError(
        "An error occured with this account",
        StatusCode.unauthorized
      );
    }

    const resp = await userRepository.deleteAccount(userParam.id);

    if (!resp) {
      throw new CustomError(
        "An error occurred deleting account",
        StatusCode.internalServerError
      );
    }

    customResponse(res, {
      code: StatusCode.ok,
      message: "Account deleted successfully",
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
    if (!user || !passwordMatches || user.is_account_deleted) {
      throw new CustomError("incorrect email or password", 400);
    }

    const token = authHelpers.createJwt(user.id ?? "");
    customResponse(res, { message: "User Login successfull", data: { token } });
  }
);

const verifyUniqueAvailability = catchError(
  async (req: Request, res: Response, next: NextFunction) => {
    const body: {
      email: string;
      user_name: string;
      phone: string;
    } = req.body;

    const isBodyEmpty =
      body == null ||
      Object.values(body).every(
        (val, ind) => val === null || val === undefined
      );

    if (isBodyEmpty) {
      throw new CustomError("Failed to get user data", StatusCode.badRequest, {
        dev_message: "The payload is empty",
      });
    }
    var response = {} as any;

    if (body.email) {
      // const form = new Form({ email: body.email });

      const user = await userRepository.findByEmail(body.email);

      user ? (response.email = true) : (response.email = false);
    }
    if (body.phone) {
      const user = await userRepository.findByPhone(body.phone);
      user ? (response.phone = true) : (response.phone = false);
    }
    if (body.user_name) {
      const user = await userRepository.findByUsername(body.user_name);
      user ? (response.user_name = true) : (response.user_name = false);
    }

    customResponse(res, { data: response });
  }
);

const authController = {
  signUp,
  login,
  createPin,
  deleteAccount,
  verifyUniqueAvailability,
};

export default authController;

import { NextFunction, Request, Response } from "express";
import { env, logger } from "../../core/globals.js";
import CustomError from "../data/models/custom_error.js";
import { StatusCode } from "../../core/utils/enums.js";
import { ZodError } from "zod";
import authHelpers from "../helpers/auth_helpers.js";

const handleGlobalError = async (
  err: Error,
  req: Request,
  res: Response,
  next: NextFunction
) => {
  const error: CustomError = _convertError(err);

  if (env.isDev) {
    return _sendErrorResponse(error, res);
  }
  logger(err.stack, "The fatal error Stack", 2000);
  logger(error.stack, "The fatal error Stack", 2000);
  return _sendErrorResponse(error, res, {
    omit: ["stack", "name"],
  });
};

const errorController = {
  handleGlobalError,
};

export default errorController;

interface CustomErrorR extends Omit<CustomError, "toJson" | "statusCode"> {}

interface ErrorResponseParameters<K> {
  omit?: K[];
  include?: K[];
}

function _sendErrorResponse<K extends keyof CustomErrorR>(
  err: CustomError,
  res: Response,
  option?: ErrorResponseParameters<K>
) {
  const message = err.message;
  // const stack_custom = err.stack_custom;
  const stack = err.stack_custom ?? err.stack;
  const dev_message = err.dev_message;
  const status = "failed";
  let statusCode = err.statusCode;
  let sever_dev_message = err.sever_dev_message;
  let name = err.name;
  let type = err.type;
  let title = err.title;

  let errorJson: CustomErrorR = {
    status,
    is_ok: false,
    message,
    dev_message,
    name,
    stack,
    sever_dev_message,
    type,
    title,
  };

  const result = { ...errorJson };
  option?.omit?.forEach((key) => {
    delete result[key];
  });
  const finalResp = authHelpers.encrypt(JSON.stringify(result));
  res.status(statusCode).json(finalResp);
}
function _convertError(err: Error): CustomError {
  if (err instanceof CustomError) {
    return err;
  }

  if (err instanceof ZodError) {
    const error = err.errors.at(0)?.message ?? "";
    return new CustomError(error, StatusCode.badRequest, {
      stack_custom: err.stack,
    });
  }

  return new CustomError(
    "An unknown error occured ",
    StatusCode.internalServerError,
    { name: err.name, sever_dev_message: err.message, stack_custom: err.stack }
  );
}

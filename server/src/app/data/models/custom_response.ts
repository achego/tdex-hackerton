import { Response } from "express";
import { StatusCode } from "../../../core/utils/enums.js";
import Strings from "../../../core/values/strings.js";

const customResponse = (
  res: Response,
  options?: {
    code?: StatusCode;
    message?: string;
    error?: any;
    data?: any;
  }
) => {
  const { code, message, data, error } = options ?? {};
  const statusCode = code ?? StatusCode.ok;
  res.status(statusCode).send({
    status: _getStatus(statusCode),
    is_ok: statusCode > 103 && statusCode <= 226 ? true : false,
    message,
    data,
  });
};

export default customResponse;

const _getStatus = (code: number) => {
  if (code > 103 && code <= 226) {
    return Strings.success;
  } else {
    return Strings.failed;
  }
};

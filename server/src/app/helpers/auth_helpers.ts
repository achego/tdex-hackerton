import bcrypt from "bcrypt";
import jwt, {
  JsonWebTokenError,
  NotBeforeError,
  TokenExpiredError,
} from "jsonwebtoken";
import Environment from "../../core/utils/environment";
import { StatusCode } from "../../core/utils/enums";
import CustomError from "../data/models/custom_error";
import userRepository from "../repos/user_repo";

const env = new Environment();

const hashPassword = (password: string): string => {
  const salt = bcrypt.genSaltSync();
  const hashedPassword = bcrypt.hashSync(password, salt);
  return hashedPassword;
};

const createJwt = (
  payload: string,
  ...[expiresIn = env.jwtExpiresIn]
): string => {
  return jwt.sign({ payload }, env.jwtSecret, { expiresIn: expiresIn });
};
const verifyJwt = (token: string): { payload: string } => {
  try {
    const payload = jwt.verify(token, env.jwtSecret) as { payload: string };
    return payload;
  } catch (error) {
    const messages = _handleJwtErrors(error);
    throw new CustomError(messages.message, StatusCode.unauthorized, {
      dev_message: messages.devMessage,
    });
  }
};
const _handleJwtErrors = (
  err: any
): { message: string; devMessage: string } => {
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

const validatePin = async (user_id: string, password: string) => {
  const user = await userRepository.findById(user_id, {
    include: ["password"],
  });
  const passwordMatches = await bcrypt.compare(password, user?.password ?? "");
  if (!user || !passwordMatches) {
    throw new CustomError("Pin validation failed", StatusCode.unauthorized);
  }
};

const authHelpers = {
  hashPassword,
  createJwt,
  verifyJwt,
  validatePin,
};

export default authHelpers;

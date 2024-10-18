import { EnvironmentType } from "./enums.js";

class Environment {
  port: string = process.env.PORT ?? "6000";
  isDev: boolean = process.env.ENV_TYPE === EnvironmentType.dev;

  jwtExpiresIn: string = process.env.JWT_EXPIRES_IN ?? "60d";
  jwtSecret: string = process.env.JWT_SECRET ?? "@#";
  iv: string = process.env.IV ?? "@#";
  encryptionKey: string = process.env.ENCRYPTION_KEY ?? "";
  algorithm: string = process.env.ALGORITHM ?? "";
}

export default Environment;

import { EnvironmentType } from "./enums.js";

class Environment {
  port: string = process.env.PORT ?? "6000";
  isDev: boolean = process.env.ENV_TYPE === EnvironmentType.dev;

  jwtExpiresIn: string = process.env.JWT_EXPIRES_IN ?? "60d";
  jwtSecret: string = process.env.JWT_SECRET ?? "@#";
  iv: string = process.env.IV ?? "@#";
  encryptionKey: string = process.env.ENCRYPTION_KEY ?? "";
  algorithm: string = process.env.ALGORITHM ?? "";
  grokApiKey: string = process.env.GROK_API_KEY ?? "";
  aiTransactionAnalyzerPrompt: string =
    process.env.AI_TRANSACTION_ANALYZER_PROMPT ?? "";
  aiTransactionAnalyzerUser: string =
    process.env.AI_TRANSACTION_ANALYZER_USER ?? "";
  fraudCheckApiBase: string = process.env.FRAUD_CHECK_BASE_API ?? "";
  fraudCheckApiKey: string = process.env.FRAUD_CHECK_API_KEY ?? "";
}

export default Environment;

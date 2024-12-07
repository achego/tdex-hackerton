import { env, logger } from "../../core/globals.js";
import axios from "axios";

export enum FraudResultReaon {
  illegal = "illegal",
  error = "error",
}

export interface FraudResult {
  status: boolean;
  reason?: FraudResultReaon;
  message?: string;
  title?: string;
}

const checkAccountForFraud = async (payload: {
  type: "fiat" | "crypto" | "test";
  symbol: string; // ngn, usd, btc etc
  sendAddress: string; // acct number || chain address
  code?: string; // Bank code
}): Promise<FraudResult> => {
  try {
    switch (payload.type) {
      case "fiat":
        return await _handleFiatRiskValidation(
          payload.sendAddress,
          payload.symbol,
          payload.code!
        );
      case "crypto":
        return _handleCryptoRiskValidation(payload.sendAddress, payload.symbol);
      case "test":
        return await _handleTestRiskValidation(
          payload.sendAddress,
          payload.symbol
        );
      default:
        return { status: false, reason: FraudResultReaon.error };
    }
  } catch (error) {
    logger(error, "Error validating account:");
    return { status: false, reason: FraudResultReaon.error };
  }
};

const fraudService = {
  checkAccountForFraud,
};

export default fraudService;
const _handleFiatRiskValidation = async (
  accountNumber: string,
  symbol: string,
  bankCode: string
): Promise<FraudResult> => {
  const response = await axios.post(`${env.fraudCheckApiBase}/validate`, {
    accountNumber,
    bankCode,
    symbol,
    apiKey: env.fraudCheckApiKey,
  });
  return response.data;
};
const _handleTestRiskValidation = async (
  accountNumber: string,
  symbol: string
): Promise<FraudResult> => {
  if (accountNumber.trim().toLocaleLowerCase() == "11111111") {
    return {
      status: true,
      reason: FraudResultReaon.illegal,
      message:
        "Our system has flagged the recipient's account as fraudulent. For your safety, this transaction cannot be completed. Please contact support",
      title: "❌ Transaction Blocked: Fraudulent Account Detected",
    };
  }
  return {
    status: false,
  };
};

function _handleCryptoRiskValidation(
  accountNumber: string,
  symbol: string
): FraudResult {
  return {
    status: false,
  };
}

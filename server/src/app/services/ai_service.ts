import Groq from "groq-sdk";
import axios from "axios";
import { env, logger } from "../../core/globals.js";
import CustomError from "../data/models/custom_error.js";
import { StatusCode } from "../../core/utils/enums.js";

const groq = new Groq({
  apiKey: env.grokApiKey,
});

const prompt: Groq.Chat.Completions.ChatCompletionMessageParam[] = [
  {
    role: "system",
    content: env.aiTransactionAnalyzerPrompt,
  },
];

export interface TransactionSpecification {
  amount: number;
  currency: string;
  date: string;
  pfi: string;
  type: string;
  status: string;
}

const analyzeUserFromTransactions = async (
  transactions: Array<TransactionSpecification>,
  transaction: TransactionSpecification
): Promise<number | null> => {
  if (transactions.length <= 3) {
    return 1;
  }
  logger(transactions, "The transactions");
  logger(transaction, "The single transaction");
  const history: Groq.Chat.Completions.ChatCompletionMessageParam = {
    role: "system",
    content: `
        Historical Transactions:
        ${JSON.stringify(transactions, null, 2)}

        New Transaction:
        ${JSON.stringify(transaction, null, 2)}
    `,
  };
  try {
    const resp = await groq.chat.completions.create({
      messages: [...prompt, history],
      model: "llama3-8b-8192",
    });

    const result: {
      confidence: number;
      reason: string;
    } = JSON.parse(resp.choices[0].message.content?.trim() ?? "");

    logger(result, "The Bots message");

    return result.confidence;
  } catch (error) {
    return null;
  }
};

const aiService = {
  analyzeUserFromTransactions,
};

export default aiService;

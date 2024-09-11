import { default as express, Express } from "express";
import Environment from "./utils/environment";
import { PrismaClient } from "@prisma/client";
import authHelpers from "../app/helpers/auth_helpers";

export { logger } from "../global_exports";

export const app: Express = express();

export const env = new Environment();

export const prisma = new PrismaClient({
  log: ["query", "info", "warn", "error"],
}).$extends({
  query: {
    user: {
      create: async ({ args, query }) => {
        const passwordHash = authHelpers.hashPassword(args.data.password);
        args.data = { ...args.data, password: passwordHash };
        return query(args);
      },
    },
  },
});

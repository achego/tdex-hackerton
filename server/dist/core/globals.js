var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
import { default as express } from "express";
import Environment from "./utils/environment.js";
import { PrismaClient } from "@prisma/client";
import authHelpers from "../app/helpers/auth_helpers.js";
export { logger } from "../global_exports.js";
export const app = express();
export const env = new Environment();
export const prisma = new PrismaClient({
    log: ["query", "info", "warn", "error"],
}).$extends({
    query: {
        user: {
            create: (_a) => __awaiter(void 0, [_a], void 0, function* ({ args, query }) {
                const passwordHash = authHelpers.hashPassword(args.data.password);
                args.data = Object.assign(Object.assign({}, args.data), { password: passwordHash });
                return query(args);
            }),
        },
    },
});

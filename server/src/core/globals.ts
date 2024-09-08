import { default as express, Express } from "express";
import Environment from "./utils/environment";

export { logger } from "../global_exports";

export const app: Express = express();

export const env = new Environment();

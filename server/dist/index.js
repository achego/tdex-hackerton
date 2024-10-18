import dotenv from "dotenv";
import http from "http";
import app from "./app.js";
import logger from "./core/utils/logger.js";
import Environment from "./core/utils/environment.js";
dotenv.config({ path: ".env" });
const env = new Environment();
const port = env.port;
const server = http.createServer(app);
server.listen(port, () => {
    logger(port, "Listening..");
});

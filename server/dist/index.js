"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const dotenv_1 = __importDefault(require("dotenv"));
const http_1 = __importDefault(require("http"));
const app_1 = __importDefault(require("./app"));
const logger_1 = __importDefault(require("./core/utils/logger"));
const environment_1 = __importDefault(require("./core/utils/environment"));
(0, logger_1.default)(1);
dotenv_1.default.config({ path: ".env" });
(0, logger_1.default)(2);
const env = new environment_1.default();
(0, logger_1.default)(3);
const port = env.port;
(0, logger_1.default)(4);
const server = http_1.default.createServer(app_1.default);
(0, logger_1.default)(5);
server.listen(port, () => {
    (0, logger_1.default)(6);
    (0, logger_1.default)(port, "Listening..");
});
//# sourceMappingURL=index.js.map
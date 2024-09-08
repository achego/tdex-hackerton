"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const routes_1 = __importDefault(require("./routes"));
const express_1 = __importDefault(require("express"));
const globals_1 = require("./core/globals");
const strings_1 = __importDefault(require("./core/values/strings"));
const custom_error_1 = __importDefault(require("./app/data/models/custom_error"));
const enums_1 = require("./core/utils/enums");
const error_handler_1 = __importDefault(require("./core/utils/error_handler"));
const error_controller_1 = __importDefault(require("./app/controllers/error_controller"));
globals_1.app.use(express_1.default.json());
globals_1.app.get(`${strings_1.default.API_BASE}test`, (req, res) => {
    res.json({ status: "success", message: "Apis are up and running" });
});
(0, routes_1.default)(globals_1.app);
globals_1.app.use("*", (0, error_handler_1.default)((req, res, next) => {
    next(new custom_error_1.default(`Cant find ${req.originalUrl} on this server`, enums_1.StatusCode.notFound));
}));
// Global Error handler
globals_1.app.use(error_controller_1.default.handleGlobalError);
exports.default = globals_1.app;
//# sourceMappingURL=app.js.map
"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.env = exports.app = exports.logger = void 0;
const express_1 = __importDefault(require("express"));
const environment_1 = __importDefault(require("./utils/environment"));
var global_exports_1 = require("../global_exports");
Object.defineProperty(exports, "logger", { enumerable: true, get: function () { return global_exports_1.logger; } });
exports.app = (0, express_1.default)();
exports.env = new environment_1.default();
//# sourceMappingURL=globals.js.map
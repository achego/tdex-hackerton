"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const baseRoutes = express_1.default.Router();
// baseRoutes
//   .route("/verify-unique")
//   .post(authController.verifyUniqueAvailability);
// baseRoutes
//   .route("/transaction")
//   .post(authMiddleWares.checkAuth, userController.getTransactions);
exports.default = baseRoutes;
//# sourceMappingURL=base_routes.js.map
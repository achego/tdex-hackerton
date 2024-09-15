import express from "express";
import pfiController from "../app/controllers/pfi_controller";
import authController from "../app/controllers/auth_controller";
import userController from "../app/controllers/user_controller";

const baseRoutes = express.Router();

baseRoutes.route("/get-offerings").get(pfiController.getOfferings);
baseRoutes
  .route("/verify-unique")
  .post(authController.verifyUniqueAvailability);
baseRoutes.route("/currency-rates").get(userController.getCurrencyrates);
baseRoutes
  .route("/available-currencies")
  .get(userController.getAvailableCurrencies);
baseRoutes.route("/test2").get(userController.test);
// baseRoutes
//   .route("/transaction")
//   .post(authMiddleWares.checkAuth, userController.getTransactions);

export default baseRoutes;

import express from "express";
import pfiController from "../app/controllers/pfi_controller";
import authController from "../app/controllers/auth_controller";

const baseRoutes = express.Router();

baseRoutes.route("/get-offerings").get(pfiController.getOfferings);
baseRoutes
  .route("/verify-unique")
  .post(authController.verifyUniqueAvailability);
// baseRoutes
//   .route("/transaction")
//   .post(authMiddleWares.checkAuth, userController.getTransactions);

export default baseRoutes;

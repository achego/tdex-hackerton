import express from "express";
import authMiddleWares from "../app/middlewares/auth_middle_wares";
import userController from "../app/controllers/user_controller";
import pfiController from "../app/controllers/pfi_controller";

const userRoutes = express.Router();

userRoutes.route("/me").get(authMiddleWares.checkAuth, userController.getMe);
userRoutes
  .route("/balances")
  .get(authMiddleWares.checkAuth, userController.getUserBalances);

userRoutes
  .route("/save-credential")
  .post(authMiddleWares.checkAuth, userController.createAndSaveCredential);
userRoutes
  .route("/credential")
  .get(authMiddleWares.checkAuth, userController.getCredentials);
userRoutes
  .route("/request-quote")
  .post(authMiddleWares.checkAuth, pfiController.requestQuote);
userRoutes
  .route("/get-exchanges")
  .post(authMiddleWares.checkAuth, pfiController.getExchanges);

export default userRoutes;
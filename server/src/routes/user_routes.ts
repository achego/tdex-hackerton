import express from "express";
import authMiddleWares from "../app/middlewares/auth_middle_wares.js";
import userController from "../app/controllers/user_controller.js";
import pfiController from "../app/controllers/pfi_controller.js";

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
  .get(authMiddleWares.checkAuth, pfiController.getExchanges);

userRoutes
  .route("/close-quote")
  .post(authMiddleWares.checkAuth, pfiController.closeQuote);

userRoutes
  .route("/place-order")
  .post(authMiddleWares.checkAuth, pfiController.placeOrder);
userRoutes
  .route("/add-currency")
  .post(authMiddleWares.checkAuth, userController.addCurrency);
userRoutes
  .route("/rate-pfi")
  .post(authMiddleWares.checkAuth, userController.ratePfi);
userRoutes
  .route("/pfi-ratings")
  .get(authMiddleWares.checkAuth, userController.getPfiRatings);
userRoutes
  .route("/add-funds")
  .get(authMiddleWares.checkAuth, userController.addDemoFunds);
userRoutes
  .route("/swap-currency")
  .post(authMiddleWares.checkAuth, userController.swapCurrency);
// userRoutes
//   .route("/send")
//   .post(authMiddleWares.checkAuth, userController.sendByUsername);

export default userRoutes;

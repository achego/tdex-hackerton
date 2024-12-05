import express from "express";
import authController from "../app/controllers/auth_controller.js";
import authMiddleWares from "../app/middlewares/auth_middle_wares.js";

const authRoutes = express.Router();

authRoutes.route("/sign-up").post(authController.signUp);
authRoutes.route("/login").post(authController.login);
authRoutes
  .route("/create-pin")
  .post(authMiddleWares.checkAuth, authController.createPin);
authRoutes
  .route("/delete-account")
  .post(authMiddleWares.checkAuth, authController.deleteAccount);

export default authRoutes;

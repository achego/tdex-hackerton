import express from "express";
import authController from "../app/controllers/auth_controller.js";
const authRoutes = express.Router();
authRoutes.route("/sign-up").post(authController.signUp);
authRoutes.route("/login").post(authController.login);
export default authRoutes;

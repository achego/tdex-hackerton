import express from "express";
import authMiddleWares from "../app/middlewares/auth_middle_wares";
import userController from "../app/controllers/user_controller";

const userRoutes = express.Router();

userRoutes.route("/me").get(authMiddleWares.checkAuth, userController.getMe);
userRoutes
  .route("/balances")
  .get(authMiddleWares.checkAuth, userController.getUserBalances);

export default userRoutes;

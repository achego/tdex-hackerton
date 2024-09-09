import express from "express";
import pfiController from "../app/controllers/pfi_controller";

const baseRoutes = express.Router();

baseRoutes.route("/get-offerings").get(pfiController.getOfferings);
// baseRoutes
//   .route("/transaction")
//   .post(authMiddleWares.checkAuth, userController.getTransactions);

export default baseRoutes;

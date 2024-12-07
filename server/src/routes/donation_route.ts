import express from "express";
import authMiddleWares from "../app/middlewares/auth_middle_wares.js";
import donationController from "../app/controllers/donation_controller.js";

const donationRoutes = express.Router();

donationRoutes
  .route("/get-donations")
  .get(authMiddleWares.checkAuth, donationController.getAllDonations);

export default donationRoutes;

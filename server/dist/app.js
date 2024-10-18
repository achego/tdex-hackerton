import useAllRoutes from "./routes/index.js";
import express from "express";
import { app } from "./core/globals.js";
import Strings from "./core/values/strings.js";
import CustomError from "./app/data/models/custom_error.js";
import { StatusCode } from "./core/utils/enums.js";
import catchError from "./core/utils/error_handler.js";
import errorController from "./app/controllers/error_controller.js";
app.use(express.json());
app.get(`${Strings.API_BASE}test`, (req, res) => {
    res.json({ status: "success", message: "Apis are up and running" });
});
useAllRoutes(app);
app.use("*", catchError((req, res, next) => {
    next(new CustomError(`Cant find ${req.originalUrl} on this server`, StatusCode.notFound));
}));
// Global Error handler
app.use(errorController.handleGlobalError);
export default app;

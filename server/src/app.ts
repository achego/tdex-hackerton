import useAllRoutes from "./routes";
import express, { NextFunction, Request, Response, Errback } from "express";
import { app } from "./core/globals";
import Strings from "./core/values/strings";
import CustomError from "./app/data/models/custom_error";
import { StatusCode } from "./core/utils/enums";
import catchError from "./core/utils/error_handler";
import errorController from "./app/controllers/error_controller";

app.use(express.json());

app.get(`${Strings.API_BASE}test`, (req, res) => {
  res.json({ status: "success", message: "Apis are up and running" });
});

useAllRoutes(app);

app.use(
  "*",
  catchError((req: Request, res: Response, next: NextFunction) => {
    next(
      new CustomError(
        `Cant find ${req.originalUrl} on this server`,
        StatusCode.notFound
      )
    );
  })
);

// Global Error handler
app.use(errorController.handleGlobalError);

export default app;

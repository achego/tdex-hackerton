import { NextFunction, Request, Response } from "express";

const catchError = (func: Function) => {
  const handler = async (req: Request, res: Response, next: NextFunction) => {
    try {
      await func(req, res, next);
    } catch (err) {
      next(err);
    } finally {
      // next(new CustomError("An unknown error ocuured", 500));
    }
  };

  return handler;
};

export default catchError;

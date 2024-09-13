import { Prisma } from "@prisma/client";
import { Request } from "express";

export default interface CustomRequest extends Request {
  user?: Prisma.UserCreateInput;
}

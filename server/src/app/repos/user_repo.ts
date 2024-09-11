import { Prisma } from "@prisma/client";
import { prisma } from "../../core/globals";
import { OmitIncudeParams } from "../../core/utils/interface";
import balancerepository from "./balance_repo";

const globalOmit: Prisma.UserOmit = {
  password: true,
  deleted_at: true,
};

const createUser = async <K extends keyof Prisma.UserOmit>(
  user: Prisma.UserCreateInput,
  option?: OmitIncudeParams<K>
): Promise<Prisma.UserCreateInput> => {
  const omit = { ...globalOmit };
  option?.include?.forEach((key) => {
    delete omit[key];
  });
  const newuser = await prisma.user.create({
    data: user,
    //TODO: Try to see if you could this this instead of   await balancerepository.createUserBalance(newuser.id)
    // data: { ...user, balance: { create: {} } },
    omit: { ...omit },
  });

  await balancerepository.createUserBalance(newuser.id);

  return newuser;
};

const findById = async <K extends keyof Prisma.UserOmit>(
  id: string,
  option?: OmitIncudeParams<K>
): Promise<Prisma.UserCreateInput | null> => {
  const omit = { ...globalOmit };
  option?.include?.forEach((key) => {
    delete omit[key];
  });
  const user = await prisma.user.findUnique({
    where: { id },
    omit,
  });

  return user;
};

const findByEmail = async <K extends keyof Prisma.UserOmit>(
  email: string,
  option?: OmitIncudeParams<K>
): Promise<Prisma.UserCreateInput | null> => {
  const omit = { ...globalOmit };
  option?.include?.forEach((key) => {
    delete omit[key];
  });
  const user = await prisma.user.findUnique({
    where: { email },
    omit: { ...omit },
  });

  return user;
};

const userRepository = {
  createUser,
  findById,
  findByEmail,
};

export default userRepository;

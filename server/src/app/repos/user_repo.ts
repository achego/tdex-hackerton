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
  // const omit = { ...globalOmit };

  const newuser = await prisma.user.create({
    data: user,

    // omit: { ...omit },
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

const findByPhone = async <K extends keyof Prisma.UserOmit>(
  phone: string,
  option?: OmitIncudeParams<K>
): Promise<Prisma.UserCreateInput | null> => {
  const omit = { ...globalOmit };
  option?.include?.forEach((key) => {
    delete omit[key];
  });
  const user = await prisma.user.findUnique({
    where: { phone },
    omit,
  });

  return user;
};
const findByUsername = async <K extends keyof Prisma.UserOmit>(
  user_name: string,

  option?: OmitIncudeParams<K>,
  extra?: {
    onlyUser?: boolean;
  }
): Promise<Prisma.UserCreateInput | null> => {
  const omit = { ...globalOmit };
  option?.include?.forEach((key) => {
    delete omit[key];
  });
  const onlyUser = extra?.onlyUser ?? true;
  const user = await prisma.user.findUnique({
    where: { user_name },
    omit,
  });

  return user;
};

const userRepository = {
  createUser,
  findById,
  findByEmail,
  findByPhone,
  findByUsername,
};

export default userRepository;

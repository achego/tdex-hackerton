import { prisma } from "../../core/globals";
import { $Enums, Prisma, PrismaClient } from "@prisma/client";
import CustomError from "../data/models/custom_error";
import { StatusCode } from "../../core/utils/enums";
import { number } from "zod";

interface OmitIncudeParams<K> {
  include?: K[];
  omit?: K[];
}

const createUserBalance = async <K extends keyof Prisma.UserBalanceOmit>(
  id: string,
  currency?: $Enums.BalanceCurrency,
  option?: OmitIncudeParams<K>
): Promise<Prisma.UserBalanceUncheckedCreateInput | null> => {
  const omit: Prisma.UserBalanceOmit = {};
  option?.include?.forEach((key) => {
    delete omit[key];
  });

  const theCurrency = currency ?? $Enums.BalanceCurrency.usd;
  const balance = await prisma.userBalance.create({
    data: {
      user_id: id,
      currency: theCurrency,
      type: $Enums.BalanceType.fiat,
      user_currency: `${id}-${theCurrency}`,
    },
    omit: omit,
  });

  return balance;
};

const getUserBalances = async <K extends keyof Prisma.UserBalanceOmit>(
  id: string,
  option?: OmitIncudeParams<K>
): Promise<Prisma.UserBalanceUncheckedCreateInput[] | null> => {
  const omit: Prisma.UserBalanceOmit = {
    created_at: true,
    id: true,
    user_id: true,
  };
  option?.include?.forEach((key) => {
    delete omit[key];
  });
  option?.omit?.forEach((key) => {
    omit[key] = true;
  });

  const balance = await prisma.userBalance.findMany({
    where: { user_id: id },
    omit: omit,
  });

  return balance;
};

const updateBalance = async <K extends keyof Prisma.UserBalanceOmit>(
  user_id: string,
  amount: number,
  currency: $Enums.BalanceCurrency,
  /** of type $Enums.TransactionDirection */
  type: string,
  option?: {
    tx?: PrismaClient;
    balanceModel?: Prisma.UserBalanceUncheckedUpdateInput;
  }
): Promise<{
  prevBalance: Prisma.UserBalanceUncheckedCreateInput;
  newBalance: Prisma.UserBalanceUncheckedCreateInput;
}> => {
  const prismaInstance = option?.tx ?? prisma;
  const balance = await prismaInstance.userBalance.findFirst({
    where: { user_id: user_id, currency: currency },
  });

  if (!balance) {
    throw new CustomError("An error occured", StatusCode.internalServerError);
  }

  if (
    type == $Enums.TransactionDirection.debit &&
    Number(balance?.balance) < amount
  ) {
    throw new CustomError(
      "You dont have enough balance, please top up to continue",
      StatusCode.internalServerError
    );
  }
  const newBal = _getNewBalance(Number(balance.balance), amount, type);
  const newBalance = await prismaInstance.userBalance.update({
    data: { balance: newBal.toString(), updated_at: new Date(Date.now()) },
    where: {
      user_id: user_id,
      currency: currency,
      user_currency: `${user_id}-${currency}`,
    },
  });
  return { prevBalance: balance, newBalance: newBalance };
};

const balancerepository = {
  createUserBalance,
  getUserBalances,
  updateBalance,
};

export default balancerepository;

const _getNewBalance = (
  balance: number,
  amount: number,
  type: string
): number => {
  var newbalance: number;

  switch (type) {
    case $Enums.TransactionDirection.credit:
      newbalance = balance + amount;

      break;
    case $Enums.TransactionDirection.debit:
      newbalance = balance - amount;

      break;

    default:
      newbalance = balance - amount;
      break;
  }

  return newbalance;
};

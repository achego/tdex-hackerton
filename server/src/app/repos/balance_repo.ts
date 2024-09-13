import { prisma } from "../../core/globals";
import { $Enums, Prisma, PrismaClient } from "@prisma/client";

interface OmitIncudeParams<K> {
  include?: K[];
  omit?: K[];
}

const createUserBalance = async <K extends keyof Prisma.UserBalanceOmit>(
  id: string,
  option?: OmitIncudeParams<K>
): Promise<Prisma.UserBalanceUncheckedCreateInput | null> => {
  const omit: Prisma.UserBalanceOmit = {};
  option?.include?.forEach((key) => {
    delete omit[key];
  });
  const balance = await prisma.userBalance.create({
    data: {
      user_id: id,
      currency: $Enums.BalanceCurrency.usd,
      type: $Enums.BalanceType.fiat,
      user_currency: `${id}-${$Enums.BalanceCurrency.usd}`,
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

const balancerepository = {
  createUserBalance,
  getUserBalances,
};

export default balancerepository;

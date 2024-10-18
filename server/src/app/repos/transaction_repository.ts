import { $Enums, Prisma, PrismaClient, User } from "@prisma/client";
import { prisma } from "../../core/globals.js";

const globalOmit: Prisma.TransactionOmit = {};

interface OmitIncudeParams<K> {
  include?: K[];
  omit?: K[];
  tx?: PrismaClient;
}

const createTransaction = async <K extends keyof Prisma.TransactionOmit>(
  transaction: Prisma.TransactionUncheckedCreateInput,
  option?: OmitIncudeParams<K>
): Promise<Prisma.TransactionUncheckedCreateInput> => {
  const omit = { ...globalOmit };
  option?.include?.forEach((key) => {
    delete omit[key];
  });
  // validateTransaction(transaction);
  const prismaInstance = option?.tx ?? prisma;
  const newTransaction = await prismaInstance.transaction.create({
    data: transaction,
  });

  return newTransaction;
};
const updateTransaction = async <K extends keyof Prisma.TransactionOmit>(
  id: number,
  userId: string,
  transaction: Prisma.TransactionUncheckedUpdateInput,
  option?: OmitIncudeParams<K>
): Promise<Prisma.TransactionUncheckedUpdateInput> => {
  const omit = { ...globalOmit };
  option?.include?.forEach((key) => {
    delete omit[key];
  });
  const prismaInstance = option?.tx ?? prisma;

  const newTransaction = await prismaInstance.transaction.update({
    data: { ...transaction, updated_at: new Date(Date.now()) },
    where: { id: id, user_id: userId },
  });

  return newTransaction;
};
const getTransactions = async <K extends keyof Prisma.TransactionOmit>(
  userId: string,
  params?: {
    page?: number;
    pageSize?: number;
    type?: $Enums.TransactionType;
  },

  option?: OmitIncudeParams<K>
): Promise<{
  total_pages: number;
  current_page?: number;
  count: number;
  last_page: boolean;
  page_size: number;
  transactions: Prisma.TransactionUncheckedUpdateInput[];
}> => {
  const omit = { ...globalOmit };
  option?.include?.forEach((key) => {
    delete omit[key];
  });
  const prismaInstance = option?.tx ?? prisma;

  const take = params?.pageSize ?? 50;
  const skip = ((params?.page ?? 1) - 1) * take;
  // prisma.transaction.

  const where: Prisma.TransactionWhereInput = {
    user_id: userId,
    type: params?.type ?? undefined,
  };

  const count = await prismaInstance.transaction.count({
    where,
  });
  const total_pages = Math.ceil(count / take);
  const last_page = (params?.page ?? 1) == total_pages;

  const transactions = await prismaInstance.transaction.findMany({
    where,
    take: take,
    skip: skip,
    orderBy: {
      created_at: "desc",
    },
    omit: {
      third_party_data: true,
      user_id: true,
      deleted_at: true,
    },
  });

  return {
    count,
    total_pages,
    current_page: params?.page ?? 1,
    page_size: take,
    last_page,
    transactions,
  };
};

const transactionRepository = {
  createTransaction,
  updateTransaction,
  getTransactions,
};

export default transactionRepository;

import { Cards, PrismaClient } from "@prisma/client";
import type { NextApiRequest, NextApiResponse } from "next";

type ResponseData = Cards[];

type Request = Omit<NextApiRequest, "query"> & {
  query: {
    page: number;
  };
};

const prisma = new PrismaClient();

export default async function handler(
  req: Request,
  res: NextApiResponse<ResponseData>,
) {
  if (req.method === "GET") {
    const page = Number(req.query.page) || 1;

    res.status(200).json(await getCards(page));
  }
}

export const perPage = 50;

export const getCards = async (page: number) => {
  return await prisma.cards.findMany({
    skip: (page - 1) * perPage,
    take: perPage,
    orderBy: {
      name: "asc",
    },
  });
};

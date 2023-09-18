import { Cards } from "@prisma/client";
import type { NextApiRequest, NextApiResponse } from "next";
import { getServerSession } from "next-auth/next";
import { prisma } from "~/db";
import { authOptions } from "~/pages/api/auth/[...nextauth]";

type ResponseData = Cards[] | { message: string };

type Request = Omit<NextApiRequest, "query"> & {
  query: {
    page: number;
  };
};

export default async function handler(
  req: Request,
  res: NextApiResponse<ResponseData>,
) {
  const session = await getServerSession(req, res, authOptions);
  if (!session) {
    res.status(401).json({ message: "Unauthorized" });
    return;
  }

  if (req.method === "GET") {
    const page = Number(req.query.page) || 1;

    return res.status(200).json(await getCards(page));
  }

  res.status(200);
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

import { Cards } from "@prisma/client";
import type { NextApiRequest, NextApiResponse } from "next";
import { getServerSession } from "next-auth/next";
import { prisma } from "~/lib/db";
import { authOptions } from "~/pages/api/auth/[...nextauth]";

export type CardData = Cards & { collected: boolean };

type ResponseData = CardData[] | { message: string };

type Request = Omit<NextApiRequest, "query"> & {
  query: {
    page: number;
    requiresCollection?: boolean;
  };
};

export default async function handler(
  req: Request,
  res: NextApiResponse<ResponseData>,
) {
  const session = await getServerSession(req, res, authOptions);
  if (!session?.user?.id) {
    res.status(401).json({ message: "Unauthorized" });
    return;
  }

  if (req.method === "GET") {
    const page = Number(req.query.page) || 1;

    return res
      .status(200)
      .json(
        await getCards(page, session.user.id, !!req.query.requiresCollection),
      );
  }

  res.status(200);
}

export const perPage = 50;

export const getCards = async (
  page: number,
  userId: string,
  requiresCollection: boolean,
) => {
  const where = requiresCollection
    ? {
        userCards: {
          some: {
            userId,
          },
        },
      }
    : undefined;

  return await prisma.cards
    .findMany({
      include: {
        userCards: {
          select: { cardId: true },
          where: { userId },
        },
      },
      where,
      skip: (page - 1) * perPage,
      take: perPage,
      orderBy: {
        name: "asc",
      },
    })
    .then((data) =>
      data.map(({ userCards, ...card }) => ({
        ...card,
        collected: !!userCards?.length,
      })),
    );
};

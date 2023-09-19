import { Cards } from "@prisma/client";
import type { NextApiRequest, NextApiResponse } from "next";
import { getServerSession } from "next-auth";
import { prisma } from "~/lib/db";
import { authOptions } from "~/pages/api/auth/[...nextauth]";
import { perPage } from "~/pages/api/cards";

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
  if (!session?.user?.id) {
    res.status(401).json({ message: "Unauthorized" });
    return;
  }

  if (req.method === "GET") {
    const page = Number(req.query.page) || 1;

    console.log(";;;;;;;;;;;;;", session.user.id);
    return res
      .status(200)
      .json(await getCollectionCards(session.user.id, page));
  }

  res.status(200);
}

export const getCollectionCards = async (
  userId: string,
  page: number,
): Promise<Cards[]> => {
  return await prisma.usersCards
    .findMany({
      select: {
        card: true,
      },
      skip: (page - 1) * perPage,
      take: perPage,
      where: { userId },
    })
    .then((data) => data.map((d) => d.card));
};

import { Cards } from "@prisma/client";
import type { NextApiRequest, NextApiResponse } from "next";
import { getServerSession } from "next-auth";
import { prisma } from "~/lib/db";
import { authOptions } from "~/pages/api/auth/[...nextauth]";

type ResponseData = Cards[] | { message: string };

type Request = Omit<NextApiRequest, "query"> & {
  query: {
    cardId: string;
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

  const payload = {
    userId: session.user.id,
    cardId: parseInt(req.query.cardId),
  };

  if (req.method === "POST") {
    await prisma.usersCards.create({
      data: payload,
    });
    return res.status(200).json({ message: "Added to collection" });
  } else if (req.method === "DELETE") {
    await prisma.usersCards.delete({
      where: {
        cardId_userId: payload,
      },
    });
    return res.status(200).json({ message: "Removed from collection" });
  }

  res.status(404).json({ message: "Not found" });
}

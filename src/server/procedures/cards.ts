import { z } from "zod"
import { loadCards } from "~/server/graphql/cards"
import { Procedure } from "~/server/trpc"

export const getCards = (procedure: Procedure) =>
  procedure.input(z.object({ page: z.number().int().gte(0) })).query(async ({ input }) => {
    return await loadCards(input.page)
  })

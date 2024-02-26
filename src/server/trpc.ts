import { initTRPC } from "@trpc/server"
import { getCards } from "~/server/procedures/cards"

const tRPCRoot = initTRPC.create()

export const appRouter = tRPCRoot.router({
  getCards: getCards(tRPCRoot.procedure),
})

export type AppRouter = typeof appRouter

export type Procedure = typeof tRPCRoot.procedure

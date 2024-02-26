import { initTRPC } from "@trpc/server"
import { z } from "zod"

const t = initTRPC.create()

export const appRouter = t.router({
  getUsers: t.procedure.input(z.string()).query(({ input }) => {
    return [input]
  }),
})

export type AppRouter = typeof appRouter

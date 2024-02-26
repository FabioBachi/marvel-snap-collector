"use client"

import { trpc } from "~/utils/trpc"

const Home = () => {
  let { data: users, isLoading, isFetching } = trpc.getCards.useQuery({ page: 1 })

  if (isLoading || isFetching) {
    return <p>Loading...</p>
  }

  return <>{JSON.stringify(users)}</>
}

export default Home

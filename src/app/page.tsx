"use client"

import { trpc } from "~/utils/trpc"

const Home = () => {
  let { data: users, isLoading, isFetching } = trpc.getUsers.useQuery("test")

  if (isLoading || isFetching) {
    return <p>Loading...</p>
  }

  return <>{JSON.stringify(users)}</>
}

export default Home

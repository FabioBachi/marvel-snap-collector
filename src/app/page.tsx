"use client"

import Button from "@mui/material/Button"
import { trpc } from "~/utils/trpc"

const Home = () => {
  let { data: users, isLoading, isFetching } = trpc.getCards.useQuery({ page: 1 })

  if (isLoading || isFetching) {
    return <p>Loading...</p>
  }

  return (
    <>
      <Button variant="contained">Hello world</Button>
      {JSON.stringify(users)}
    </>
  )
}

export default Home

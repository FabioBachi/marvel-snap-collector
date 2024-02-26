import { GraphQLClient } from "graphql-request"

const url = process.env.HASURA_URL!

const client = new GraphQLClient(url, {
  headers: { "content-type": "application/json" },
})

export const executeQuery = (query: string, params?: Record<string, string | number>) => {
  return client.request(query, params)
}

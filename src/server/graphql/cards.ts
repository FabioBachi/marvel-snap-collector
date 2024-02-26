import { gql } from "graphql-request"
import { executeQuery } from "~/server/hasura"

export const loadCards = (page: number) => {
  const pageSize = 20
  const offset = (page - 1) * pageSize

  return executeQuery(
    gql`
      query CardList($offset: Int!, $limit: Int!) {
        card(limit: $limit, offset: $offset, order_by: { name: asc }) {
          id
          ability
          art
          cost
          name
          power
          slug
          url
        }
      }
    `,
    { offset, limit: pageSize }
  )
}

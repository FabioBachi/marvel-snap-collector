import type { GetServerSideProps } from "next";
import { getServerSession } from "next-auth";
import { ReactElement, useCallback, useState } from "react";
import InfiniteScroll from "react-infinite-scroll-component";
import { Card } from "~/components/cards/card";
import { Layout } from "~/components/layouts/layout";
import { NextPageWithLayout } from "~/pages/_app";
import { authOptions } from "~/pages/api/auth/[...nextauth]";
import { CardData, getCards, perPage } from "~/pages/api/cards";

type Props = {
  cards: CardData[];
  page: number;
};

const Collection: NextPageWithLayout<Props> = (props: Props) => {
  const [cards, setCards] = useState(props.cards);
  const [page, setPage] = useState(props.page);
  const [hasMore, setHasMore] = useState(true);

  console.log(cards);

  const loadMore = useCallback(() => {
    setPage(page + 1);
    return fetch(`/api/cards?page=${page + 1}&requiresCollection=1`).then(
      async (res) => {
        const response = await res.json();
        setHasMore(response.length === perPage);
        setCards((cards) => [...cards, ...response]);
      },
    );
  }, [page]);

  return (
    <InfiniteScroll
      dataLength={cards.length}
      hasMore={hasMore}
      loader={<></>}
      next={loadMore}
      scrollableTarget="content"
    >
      <div className="mx-auto grid max-w-screen-xl grid-cols-2 gap-4 p-4 md:grid-cols-3 lg:grid-cols-4 xl:grid-cols-5">
        {cards.map((card) => (
          <Card key={card.id} card={card} />
        ))}
      </div>
    </InfiniteScroll>
  );
};

Collection.getLayout = function getLayout(page: ReactElement) {
  return <Layout>{page}</Layout>;
};

export const getServerSideProps = (async (context) => {
  const session = await getServerSession(context.req, context.res, authOptions);

  if (!session?.user) {
    return {
      redirect: { destination: "/", permanent: false },
    };
  }

  const page = context.query.page ? parseInt(context.query.page as string) : 1;

  return {
    props: { cards: await getCards(page, session.user.id, true), page },
  };
}) satisfies GetServerSideProps<Props>;

export default Collection;

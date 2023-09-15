import { ReactElement } from "react";
import { Layout } from "~/components/layouts/layout";
import { NextPageWithLayout } from "~/pages/_app";

const Cards: NextPageWithLayout = () => {
  return <div>oie</div>;
};

Cards.getLayout = function getLayout(page: ReactElement) {
  return <Layout>{page}</Layout>;
};

export default Cards;

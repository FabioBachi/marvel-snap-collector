import { ReactElement } from "react";
import { FiGrid } from "react-icons/fi";
import { Layout } from "~/components/layouts/layout";
import { NextPageWithLayout } from "~/pages/_app";

const Cards: NextPageWithLayout = () => {
  return <div>oie</div>;
};

Cards.getLayout = function getLayout(page: ReactElement) {
  return <Layout header={{ icon: <FiGrid />, title: "Decks" }}>{page}</Layout>;
};

export default Cards;

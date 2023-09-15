import { ReactElement } from "react";
import { Card } from "~/components/cards/card";
import { Layout } from "~/components/layouts/layout";
import { NextPageWithLayout } from "~/pages/_app";

const Cards: NextPageWithLayout = () => {
  return (
    <div className="grid grid-cols-2 gap-4 p-4">
      <Card />
      <Card />
      <Card />
      <Card />
      <Card />
      <Card />
      <Card />
      <Card />
      <Card />
      <Card />
      <Card />
      <Card />
    </div>
  );
};

Cards.getLayout = function getLayout(page: ReactElement) {
  return <Layout>{page}</Layout>;
};

export default Cards;

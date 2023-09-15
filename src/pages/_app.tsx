import { NextPage } from "next";
import { AppProps } from "next/app";
import Head from "next/head";
import { ReactElement, ReactNode } from "react";
import { Toaster } from "~/components/ui/toaster";
import "~/styles/globals.css";

export type NextPageWithLayout<P = {}, IP = P> = NextPage<P, IP> & {
  getLayout?: (page: ReactElement) => ReactNode;
};

type AppPropsWithLayout = AppProps & {
  Component: NextPageWithLayout;
};

const MyApp = ({ Component, pageProps }: AppPropsWithLayout) => {
  // Use the layout defined at the page level, if available
  const getLayout = Component.getLayout ?? ((page) => page);

  return getLayout(
    <>
      <Head>
        <title>Marvel Snap Collector</title>
        <meta name="description" content="Marvel Snap Collector" />
        <link rel="icon" href="/favicon.ico" />
      </Head>

      <Component {...pageProps} />

      <Toaster />
    </>,
  );
};

export default MyApp;

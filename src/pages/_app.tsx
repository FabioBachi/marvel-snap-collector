import { type AppType } from "next/dist/shared/lib/utils";
import Head from "next/head";

import "~/styles/globals.css";

const MyApp: AppType = ({ Component, pageProps }) => {
  return (
    <>
      <Head>
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link
          rel="preconnect"
          href="https://fonts.gstatic.com"
          crossOrigin="anonymous"
        />
        <link
          href="https://fonts.googleapis.com/css2?family=Handjet:wght@400;500;600;700&display=block"
          rel="stylesheet"
        />

        <title>Marvel Snap Collector</title>
        <meta name="description" content="Marvel Snap Collector" />
        <link rel="icon" href="/favicon.ico" />
      </Head>

      <div className="bg-carbon-100 font-handjet text-carbon-400 min-h-screen text-lg text-lg tracking-wider">
        <Component {...pageProps} />
      </div>
    </>
  );
};

export default MyApp;

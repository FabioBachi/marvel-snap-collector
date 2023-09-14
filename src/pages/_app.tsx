import { type AppType } from "next/dist/shared/lib/utils";
import Head from "next/head";
import { Toaster } from "~/components/ui/toaster";
import "~/styles/globals.css";

const MyApp: AppType = ({ Component, pageProps }) => {
  return (
    <>
      <Head>
        <title>Marvel Snap Collector</title>
        <meta name="description" content="Marvel Snap Collector" />
        <link rel="icon" href="/favicon.ico" />
      </Head>

      <div className="bg-carbon-100 font-work-sans text-carbon-400 min-h-screen text-sm">
        <Component {...pageProps} />
      </div>

      <Toaster />
    </>
  );
};

export default MyApp;

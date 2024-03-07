import type { Metadata } from "next"
import { Roboto } from "next/font/google"
import { Layout } from "~/components/layout"
import { TrpcProvider } from "~/components/trpcProvider"

const roboto = Roboto({ subsets: ["latin"], weight: ["300", "400", "500", "700"] })

export const metadata: Metadata = {
  title: "Marvel Snap Collector",
}

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode
}>) {
  return (
    <html lang="en">
      <head>
        <link rel="icon" href="/assets/images/favicon.jpg" type="image/png" />
      </head>

      <body className={roboto.className}>
        <TrpcProvider>
          <Layout>{children}</Layout>
        </TrpcProvider>
      </body>
    </html>
  )
}

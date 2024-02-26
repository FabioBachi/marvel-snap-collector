import type { Metadata } from "next"
import { Inter } from "next/font/google"
import Head from "next/head"
import { TrpcProvider } from "~/components/provider"

const inter = Inter({ subsets: ["latin"] })

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

      <body className={inter.className}>
        <TrpcProvider>{children}</TrpcProvider>
      </body>
    </html>
  )
}

import { GetServerSideProps, GetServerSidePropsResult } from "next";
import { getServerSession } from "next-auth";
import { getProviders } from "next-auth/react";
import Image from "next/image";
import { ReactElement } from "react";
import { LoginForm } from "~/components/form";
import { AuthLayout } from "~/components/layouts/authLayout";
import { authOptions } from "~/pages/api/auth/[...nextauth]";

export type Props = {
  providers: Awaited<ReturnType<typeof getProviders>>;
};

export default function Index({ providers }: Props) {
  return (
    <div className="mx-auto flex min-h-screen max-w-lg flex-col flex-nowrap gap-6 pt-6">
      <header className="relative h-12 w-full py-6">
        <Image
          src="/logo.png"
          alt="Marvel Snap - Collector"
          className="object-contain"
          fill
          priority
        />
      </header>

      <div className="flex w-full grow items-stretch px-4">
        <LoginForm providers={providers} />
      </div>
    </div>
  );
}

Index.getLayout = function getLayout(page: ReactElement) {
  return <AuthLayout>{page}</AuthLayout>;
};

export const getServerSideProps = (async ({
  req,
  res,
}): Promise<GetServerSidePropsResult<Props>> => {
  const session = await getServerSession(req, res, authOptions);

  if (session) {
    return {
      redirect: { destination: "/cards", permanent: false },
    };
  }

  return {
    props: {
      providers: await getProviders(),
    },
  };
}) satisfies GetServerSideProps<Props>;

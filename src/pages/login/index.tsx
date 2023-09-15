import Image from "next/image";
import { ReactElement } from "react";
import { AuthLayout } from "~/components/layouts/authLayout";
import { LoginForm } from "~/pages/login/components/form";

export default function Login() {
  return (
    <div className="flex min-h-screen flex-col flex-nowrap gap-6 pt-6">
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
        <LoginForm />
      </div>
    </div>
  );
}

Login.getLayout = function getLayout(page: ReactElement) {
  return <AuthLayout>{page}</AuthLayout>;
};

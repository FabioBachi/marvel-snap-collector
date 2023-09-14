import Image from "next/image";
import { LoginForm } from "~/pages/login/components/form";

export default function Login() {
  return (
    <main className="flex min-h-screen flex-col flex-nowrap gap-6 pt-6">
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
    </main>
  );
}

import Image from "next/image";
import { FiLock } from "react-icons/fi";
import { Button } from "~/components/ui/button";

export default function Login() {
  return (
    <main className="flex min-h-screen flex-col flex-nowrap gap-6 pt-6">
      <header className="relative h-12 w-full py-6">
        <Image
          src="/logo.png"
          alt="Marvel Snap - Collector"
          className="object-contain"
          fill
        />
      </header>
      <div className="flex w-full grow items-stretch px-4">
        <div className="bg-carbon-200 flex w-full flex-col justify-center gap-4 rounded-t-xl p-4 text-center">
          <p>Please log in before continuing:</p>
          <Button variant="default">
            <FiLock className="mr-2" />
            Login
          </Button>
        </div>
      </div>
    </main>
  );
}

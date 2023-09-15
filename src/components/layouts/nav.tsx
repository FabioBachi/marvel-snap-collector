import clsx from "clsx";
import Image from "next/image";
import Link from "next/link";
import { useRouter } from "next/router";
import { PropsWithChildren } from "react";
import { FiGrid, FiHeart, FiSearch } from "react-icons/fi";

export const Navigation = () => {
  return (
    <nav className="fixed bottom-0 left-0 flex h-[4.75rem] w-full items-center justify-between bg-carbon-200/80 px-6 text-lg text-white backdrop-blur">
      <Link className="relative h-8 w-[3rem]" href="/cards">
        <Image
          src="/logo.png"
          alt="Marvel Snap - Collector"
          className="object-contain"
          fill
          priority
        />
      </Link>
      <NavButton route="/collection">
        <FiHeart />
      </NavButton>
      <NavButton route="/decks">
        <FiGrid />
      </NavButton>
      <NavButton>
        <FiSearch />
      </NavButton>
    </nav>
  );
};

type NavButtonProps = {
  route?: string;
};

const NavButton = ({ children, route }: PropsWithChildren<NavButtonProps>) => {
  const { pathname } = useRouter();
  const active = route?.match(pathname);

  return (
    <Link
      className={clsx(
        "flex h-12 w-12 items-center justify-center rounded-full",
        active && "bg-purple-500",
      )}
      href={route ?? ""}
    >
      {children}
    </Link>
  );
};

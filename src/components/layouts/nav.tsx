import clsx from "clsx";
import { signOut } from "next-auth/react";
import Image from "next/image";
import Link from "next/link";
import { useRouter } from "next/router";
import { MouseEventHandler, PropsWithChildren } from "react";
import { FiGrid, FiHeart, FiLogOut, FiSearch } from "react-icons/fi";
import { PiCards } from "react-icons/pi";
import { SearchInput } from "~/components/searchInput";

export const Navigation = () => {
  return (
    <nav className="fixed bottom-0 left-0 h-[4.75rem] w-full bg-carbon-200/80 backdrop-blur md:top-0">
      <div className="flex h-full items-center justify-between px-6 text-lg text-white md:mx-auto md:max-w-screen-xl md:gap-10 md:px-4">
        <div className="relative h-8 w-[3rem] md:mr-auto md:w-60">
          <Link className="block w-[3rem]" href="/cards">
            <Image
              src="/logo.png"
              alt="Marvel Snap - Collector"
              className="object-contain object-left"
              height={32}
              width={49}
              priority
            />
          </Link>
        </div>

        <NavButton className="hidden md:flex" route="/cards">
          <PiCards className="flex-shrink-0" />
          <span className="hidden text-sm md:block">Cards</span>
        </NavButton>
        <NavButton route="/collection">
          <FiHeart className="flex-shrink-0" />
          <span className="hidden text-sm md:block">Collection</span>
        </NavButton>
        <NavButton route="/decks">
          <FiGrid className="flex-shrink-0" />
          <span className="hidden text-sm md:block">Decks</span>
        </NavButton>
        <NavButton className="md:hidden">
          <FiSearch className="flex-shrink-0" />
          <span className="hidden text-sm md:block">Search</span>
        </NavButton>

        <SearchInput />

        <NavButton
          className="hidden md:flex"
          onClick={() => signOut({ callbackUrl: "/" })}
        >
          <FiLogOut className="flex-shrink-0" />
        </NavButton>
      </div>
    </nav>
  );
};

type NavButtonProps = {
  className?: string;
  onClick?: MouseEventHandler<HTMLAnchorElement>;
  route?: string;
};

const NavButton = ({
  children,
  className,
  onClick,
  route,
}: PropsWithChildren<NavButtonProps>) => {
  const { pathname } = useRouter();
  const active = route?.match(pathname);

  return (
    <Link
      className={clsx(
        "flex h-12 w-12 items-center justify-center gap-2 rounded-full md:h-auto md:w-auto md:px-3 md:py-2",
        active && "bg-purple-500",
        className,
      )}
      onClick={onClick}
      href={route ?? {}}
    >
      {children}
    </Link>
  );
};

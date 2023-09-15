import Image from "next/image";
import { ReactNode } from "react";

export type Props = {
  icon?: ReactNode;
  title?: string;
};

export const LayoutHeader = ({ icon, title }: Props) => {
  return (
    <header className="flex items-center justify-center gap-2 py-3 text-2xl font-medium text-white">
      {title ? (
        <>
          {icon || null}
          {title}
        </>
      ) : (
        <div className="relative h-12 w-full">
          <Image
            src="/logo.png"
            alt="Marvel Snap - Collector"
            className="object-contain"
            fill
            priority
          />
        </div>
      )}
    </header>
  );
};

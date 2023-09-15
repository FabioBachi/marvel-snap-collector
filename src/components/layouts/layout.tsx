import { PropsWithChildren } from "react";
import {
  Props as HeaderProps,
  LayoutHeader,
} from "~/components/layouts/header";

type Props = {
  header?: HeaderProps;
};

export const Layout = ({ children, header }: PropsWithChildren<Props>) => {
  return (
    <div className="relative h-screen overflow-hidden pb-[4.75rem]">
      <div className="relative z-0 h-full overflow-y-auto overflow-x-hidden">
        <LayoutHeader title={header?.title} icon={header?.icon} />
        <main>{children}</main>
      </div>

      <nav className="fixed bottom-0 left-0 flex h-[4.75rem] w-full items-center justify-between bg-carbon-200/80 backdrop-blur">
        navigation
      </nav>
    </div>
  );
};

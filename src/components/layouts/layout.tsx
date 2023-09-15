import { PropsWithChildren } from "react";
import {
  Props as HeaderProps,
  LayoutHeader,
} from "~/components/layouts/header";
import { Navigation } from "~/components/layouts/nav";

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

      <Navigation />
    </div>
  );
};

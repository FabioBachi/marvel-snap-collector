import { ReactNode } from "react";

export type Props = {
  icon?: ReactNode;
  title?: string;
};

export const LayoutHeader = ({ icon, title }: Props) => {
  return title ? (
    <header className="flex items-center justify-center gap-2 py-3 text-2xl font-medium text-white">
      {icon || null}
      {title}
    </header>
  ) : null;
};

import { PropsWithChildren } from "react";

export const AuthLayout = ({ children }: PropsWithChildren<unknown>) => {
  return <main className="min-h-full">{children}</main>;
};

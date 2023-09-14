import * as React from "react";

import { cn } from "~/lib/utils";

export interface InputProps
  extends React.InputHTMLAttributes<HTMLInputElement> {}

const Input = React.forwardRef<HTMLInputElement, InputProps>(
  ({ className, type, ...props }, ref) => {
    return (
      <input
        type={type}
        className={cn(
          "border-carbon-300 text-carbon-500 placeholder:text-carbon-400 flex h-12 w-full rounded-full border bg-transparent px-4 py-2 text-sm file:border-0 file:bg-transparent file:text-lg file:font-bold focus-visible:border-purple-500 focus-visible:outline-none disabled:cursor-not-allowed disabled:opacity-50",
          className,
        )}
        ref={ref}
        {...props}
      />
    );
  },
);
Input.displayName = "Input";

export { Input };

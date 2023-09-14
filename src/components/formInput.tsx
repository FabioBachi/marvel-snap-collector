import { ControllerProps, FieldPath, FieldValues } from "react-hook-form";
import {
  Field,
  FormControl,
  FormDescription,
  FormItem,
  FormLabel,
  FormMessage,
} from "~/components/ui/form";
import { Input } from "~/components/ui/input";

type Props = {
  description?: string;
  label?: string;
  placeholder?: string;
  type?: React.HTMLInputTypeAttribute;
};

export const FormInput = <
  TFieldValues extends FieldValues = FieldValues,
  TName extends FieldPath<TFieldValues> = FieldPath<TFieldValues>,
>({
  description,
  label,
  placeholder,
  type,
  ...props
}: Props & Omit<ControllerProps<TFieldValues, TName>, "render">) => {
  return (
    <Field
      {...props}
      render={({ field }) => (
        <FormItem>
          {label && <FormLabel>{label}</FormLabel>}

          <FormControl>
            <Input placeholder={placeholder} type={type} {...field} />
          </FormControl>

          {description && <FormDescription>{description}</FormDescription>}
          <FormMessage />
        </FormItem>
      )}
    />
  );
};

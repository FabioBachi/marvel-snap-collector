import { zodResolver } from "@hookform/resolvers/zod";
import { useForm } from "react-hook-form";
import { FiSearch } from "react-icons/fi";
import * as z from "zod";
import { FormInput } from "~/components/formInput";
import { Button } from "~/components/ui/button";
import { Form } from "~/components/ui/form";

const FormSchema = z.object({
  q: z.string(),
});

export const SearchInput = () => {
  const form = useForm<z.infer<typeof FormSchema>>({
    resolver: zodResolver(FormSchema),
  });

  return (
    <div className="ml-auto hidden md:block">
      <Form {...form}>
        <form action="/cards" className="flex items-center">
          <FormInput
            className="w-60 pr-[2.6rem]"
            control={form.control}
            defaultValue=""
            name="q"
            placeholder="Search cards"
            type="text"
          />

          <Button className="ml-[-2.6rem]" type="submit" variant="default">
            <FiSearch />
          </Button>
        </form>
      </Form>
    </div>
  );
};

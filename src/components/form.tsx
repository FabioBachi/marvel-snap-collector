import { zodResolver } from "@hookform/resolvers/zod";
import { useForm } from "react-hook-form";
import { FiLock } from "react-icons/fi";
import * as z from "zod";
import { FormInput } from "~/components/formInput";
import { Button } from "~/components/ui/button";
import { Form } from "~/components/ui/form";
import { toast } from "~/components/ui/use-toast";

const FormSchema = z.object({
  email: z.string(),
});

export const LoginForm = () => {
  const form = useForm<z.infer<typeof FormSchema>>({
    resolver: zodResolver(FormSchema),
  });

  function onSubmit(data: z.infer<typeof FormSchema>) {
    toast({
      title: "You submitted the following values:",
      description: (
        <pre className="mt-2 w-[340px] rounded-md bg-slate-950 p-4">
          <code>{JSON.stringify(data, null, 2)}</code>
        </pre>
      ),
    });
  }

  return (
    <Form {...form}>
      <form
        onSubmit={form.handleSubmit(onSubmit)}
        className="bg-carbon-200 flex w-full flex-col justify-center gap-4 rounded-t-xl p-4 text-center"
      >
        <p>Please log in before continuing:</p>

        <FormInput
          control={form.control}
          defaultValue=""
          name="email"
          placeholder="Your email"
          type="email"
        />

        <Button type="submit" variant="default">
          <FiLock />
          Login
        </Button>

        <div className="pt-5 text-xs">
          <p className="mb-0">This is just a fake login for demo purposes.</p>
          <p className="mb-0">You can submit without typing anything</p>
        </div>
      </form>
    </Form>
  );
};

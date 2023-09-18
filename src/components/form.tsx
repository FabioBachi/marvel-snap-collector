import { zodResolver } from "@hookform/resolvers/zod";
import { signIn } from "next-auth/react";
import { useRouter } from "next/router";
import { useForm } from "react-hook-form";
import { FiLock } from "react-icons/fi";
import * as z from "zod";
import { FormInput } from "~/components/formInput";
import { Button } from "~/components/ui/button";
import { Form } from "~/components/ui/form";
import { Props } from "~/pages";

const FormSchema = z.object({
  email: z.string(),
});

const logos = "https://authjs.dev/img/providers";

export const LoginForm = ({ providers }: Props) => {
  const router = useRouter();
  const form = useForm<z.infer<typeof FormSchema>>({
    resolver: zodResolver(FormSchema),
  });

  const onSubmit = async (data: z.infer<typeof FormSchema>) => {
    signIn("credentials", { redirect: false, email: data.email })
      .then(() => {
        router.replace("/cards");
      })
      .catch((error) => {
        console.log(error);
      });
  };

  return (
    <Form {...form}>
      <form
        method="post"
        className="flex w-full flex-col justify-center gap-4 rounded-t-xl bg-carbon-200 p-4 text-center md:p-6"
        onSubmit={form.handleSubmit(onSubmit)}
      >
        <div>
          <p>This is just a fake login for demo purposes.</p>
          <p>You can submit without typing anything.</p>
        </div>

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
          <p className="mb-5">
            Either way, the app supports NextAuth as an authentication option:
          </p>
        </div>

        {providers &&
          Object.values(providers)
            .filter((p) => p.type !== "credentials")
            .map((provider) => (
              <Button
                key={provider.name}
                onClick={() => signIn(provider.id)}
                type="button"
              >
                <img
                  src={`${logos}/${provider.id}-dark.svg`}
                  alt={`${provider.name}`}
                  className="h-5 w-5"
                />
                Sign in with {provider.name}
              </Button>
            ))}
      </form>
    </Form>
  );
};

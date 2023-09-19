import { PrismaAdapter } from "@auth/prisma-adapter";
import { createId } from "@paralleldrive/cuid2";
import NextAuth, { AuthOptions } from "next-auth";
import CredentialsProvider from "next-auth/providers/credentials";
import GithubProvider from "next-auth/providers/github";
import { prisma } from "~/lib/db";

export const authOptions: AuthOptions = {
  adapter: PrismaAdapter(prisma),
  pages: {
    signIn: "/",
  },
  session: {
    maxAge: 30 * 24 * 60 * 60, // 30 days
    strategy: "jwt",
  },
  providers: [
    CredentialsProvider({
      id: "credentials",
      name: "Credentials",
      credentials: {
        email: { label: "Email", type: "email" },
      },
      async authorize(credentials) {
        const id = createId();
        await prisma.user.create({
          data: {
            id,
            email: id,
            emailVerified: new Date(),
            name: `Visitor ${id}`,
          },
        });

        return {
          id,
          email: `visitor-${id}@test.com`,
          image: null,
          name: `Visitor ${id}`,
        };
      },
    }),
    GithubProvider({
      clientId: process.env.GITHUB_ID || "",
      clientSecret: process.env.GITHUB_SECRET || "",
    }),
  ],
  callbacks: {
    jwt: async ({ token, user }) => {
      if (user?.id) {
        token.id = user.id;
      }
      return token;
    },
    session: ({ session, token }) => {
      return {
        expires: session.expires,
        user: token
          ? {
              id: token.id,
              name: token.name,
              email: token.email,
              image: token.picture,
            }
          : undefined,
      };
    },
  },
};

export default NextAuth(authOptions);

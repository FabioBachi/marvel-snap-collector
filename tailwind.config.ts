import * as colors from "tailwindcss/colors";

/** @type {import('tailwindcss').Config} */
export default {
  darkMode: ["class"],
  content: [
    "./pages/**/*.{ts,tsx}",
    "./components/**/*.{ts,tsx}",
    "./app/**/*.{ts,tsx}",
    "./src/**/*.{ts,tsx}",
  ],
  theme: {
    container: {
      center: true,
      padding: "2rem",
      screens: {
        "2xl": "1400px",
      },
    },
    colors: {
      black: colors.black,
      current: "currentColor",
      emerald: colors.emerald,
      gray: colors.gray,
      red: colors.red,
      transparent: "transparent",
      white: colors.white,
      carbon: {
        100: "#232323",
        200: "#2C2C2C",
        300: "#525252",
        400: "#838383",
        500: "#9F9F9F",
        600: "#B7B7B7",
      },
      purple: {
        50: "#EEE8FE",
        100: "#D3C6FB",
        200: "#B5A0FA",
        300: "#9478F9",
        400: "#7759F8",
        500: "#563AF5",
        600: "#4735EE",
        700: "#2D2EE5",
        800: "#0028E0",
        900: "#001AD8",
      },
    },
    extend: {
      animation: {
        "accordion-down": "accordion-down 0.2s ease-out",
        "accordion-up": "accordion-up 0.2s ease-out",
      },
      fontFamily: {
        "work-sans": ["Work Sans", "sans-serif"],
      },
      keyframes: {
        "accordion-down": {
          from: { height: 0 },
          to: { height: "var(--radix-accordion-content-height)" },
        },
        "accordion-up": {
          from: { height: "var(--radix-accordion-content-height)" },
          to: { height: 0 },
        },
      },
      padding: {
        full: "100%",
      },
    },
  },
  plugins: [require("tailwindcss-animate")],
};

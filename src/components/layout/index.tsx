"use client"

import { PropsWithChildren } from "react"
import { ThemeProvider, createTheme } from "@mui/material/styles"
import CssBaseline from "@mui/material/CssBaseline"
import { deepPurple, pink } from "@mui/material/colors"

export const Layout = ({ children }: PropsWithChildren) => {
  return (
    <ThemeProvider theme={darkTheme}>
      <CssBaseline />
      {children}
    </ThemeProvider>
  )
}

const darkTheme = createTheme({
  palette: {
    mode: "dark",
    primary: deepPurple,
    secondary: pink,
  },
})

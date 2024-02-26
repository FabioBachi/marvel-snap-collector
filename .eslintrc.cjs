module.exports = {
  root: true,
  env: { browser: true, es2020: true },
  extends: ["eslint:recommended", "plugin:@typescript-eslint/recommended", "plugin:react-hooks/recommended"],
  ignorePatterns: ["dist", ".eslintrc.cjs"],
  parser: "@typescript-eslint/parser",
  parserOptions: {
    project: true,
  },
  plugins: ["simple-import-sort", "react-refresh"],
  rules: {
    "no-console": ["warn", { allow: ["error"] }],
    "no-warning-comments": ["warn"],
    "react-hooks/exhaustive-deps": "error",
    "@typescript-eslint/consistent-type-definitions": ["error", "type"],
    "@typescript-eslint/consistent-type-exports": [
      "warn",
      {
        fixMixedExportsWithInlineTypeSpecifier: true,
      },
    ],
    "@typescript-eslint/consistent-type-imports": [
      "error",
      {
        fixStyle: "separate-type-imports",
      },
    ],
    "@typescript-eslint/no-import-type-side-effects": "error",
    "@typescript-eslint/naming-convention": [
      "off",
      {
        selector: "typeLike",
        format: ["StrictPascalCase"],
      },
    ],
    "@typescript-eslint/no-floating-promises": "warn",
    "@typescript-eslint/no-misused-promises": "warn",
    "@typescript-eslint/no-misused-promises": [
      2,
      {
        checksVoidReturn: {
          attributes: false,
        },
      },
    ],
    "@typescript-eslint/prefer-for-of": "warn",
    "@typescript-eslint/prefer-function-type": "error",
    "@typescript-eslint/prefer-includes": "warn",
    "@typescript-eslint/prefer-nullish-coalescing": ["error", { ignorePrimitives: { string: true } }],
    "@typescript-eslint/prefer-optional-chain": "warn",
    "@typescript-eslint/prefer-string-starts-ends-with": "warn",
    "@typescript-eslint/prefer-ts-expect-error": "error",
    "@typescript-eslint/require-await": "error",
    "@typescript-eslint/restrict-plus-operands": "error",

    "react-refresh/only-export-components": ["warn", { allowConstantExport: true }],

    "simple-import-sort/imports": [
      "warn",
      {
        groups: [
          // "react" imports or starting with "react/"
          ["^react(?:/.*)?$"],
          // Imports starting with a letter or "@"
          ["^[a-zA-Z@]"],
          // Imports starting with "~" our paths are set in tsconfig.json
          ["^~"],
          // Imports starting with ".."
          ["^\\.\\."],
          // Imports starting with "."
          ["^\\."],
          // Side effect imports
          ["^\\u0000"],
          // CSS files
          [".*\\.css$"],
          // Anything not matched in another group
          ["^"],
        ],
      },
    ],
    "simple-import-sort/exports": "error",
  },
}

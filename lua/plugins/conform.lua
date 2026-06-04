return {
  "stevearc/conform.nvim",
  opts = {
    formatters = {
      clang_format = {
        prepend_args = { "--style={BasedOnStyle: LLVM, IndentWidth: 4, TabWidth: 4, UseTab: Never}" },
      },
    },
  },
}

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      ensure_installed = {
        "gdtoolkit",
      },
      servers = {
        gdscript = {
          cmd = { "ncat", "localhost", "6005" },
        },
      },
    },
  },
}

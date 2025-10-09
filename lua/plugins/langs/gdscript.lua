return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      gdscript = {
        cmd = { "ncat", "localhost", "6005" },
      },
    },
  },
}

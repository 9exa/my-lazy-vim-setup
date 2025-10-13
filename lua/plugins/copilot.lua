if true then
  return {}
end

return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    event = "BufReadPost",
    opts = {
      suggestion = {
        enabled = not vim.g.ai_cmp,
        auto_trigger = true,
        hide_during_completion = vim.g.ai_cmp,
        keymap = {
          accept = false, -- handled by nvim-cmp / blink.cmp
          next = "<M-]>",
          prev = "<M-[>",
        },
      },
      panel = { enabled = false },
      filetypes = {
        markdown = true,
        help = true,
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- copilot.lua only works with its own copilot lsp server
        copilot = { enabled = false },
      },
    },
  },
}

-- return {
--   {
--     "mason-org/mason-lspconfig.nvim",
--     opts = {
--       ensure_installed = {
--         "copilot_language_server",
--       },
--     },
--     dependencies = {
--       { "mason-org/mason.nvim", opts = {} },
--       "neovim/nvim-lspconfig",
--     },
--   },
--   {
--     "zbirenbaum/copilot.lua",
--     requires = {
--       "copilotlsp-nvim/copilot-lsp",
--       init = function()
--         vim.g.copilot_nes_debounce = 500
--       end,
--     },
--     cmd = "Copilot",
--     event = "InsertEnter",
--     suggestion = {
--       enabled = true,
--       auto_trigger = true,
--       hide_during_completion = true,
--       debounce = 75,
--       trigger_on_accept = true,
--       keymap = {
--         accept = "<M-l>",
--         accept_word = false,
--         accept_line = false,
--         next = "<M-]>",
--         prev = "<M-[>",
--         dismiss = "<C-]>",
--       },
--     },
--     -- config = function()
--     --   require("copilot").setup({
--     --     nes = {
--     --       enabled = true,
--     --       keymap = {
--     --         accept_and_goto = "<leader>p",
--     --         accept = false,
--     --         dismiss = "<Esc>",
--     --       },
--     --     },
--     --   })
--     -- end,
--   },
-- }

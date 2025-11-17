return {
  'stevearc/conform.nvim',
  -- Load plugin very early on events like BufWritePre (format on save)
  -- and on the ConformInfo command.
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },

  -- Set up keymap for manual formatting
  keys = {
    {
      -- Format buffer
      "<leader>f",
      function()
        require("conform").format({ async = true, lsp_fallback = true })
      end,
      mode = { "n", "v" },
      desc = "Format buffer",
    },
  },

  opts = {
    -- Disable error notifications
    notify_on_error = false,

    -- Enable format on save
    format_on_save = {
      timeout_ms = 1000,
      -- Use lsp_fallback = true to fall back to LSP formatting
      -- if conform.nvim has no formatter available
      lsp_fallback = true,
    },

    -- Define your formatters by filetype
    formatters_by_ft = {
      -- Prettier
      javascript = { "prettier" },
      typescript = { "prettier" },
      javascriptreact = { "prettier" },
      typescriptreact = { "prettier" },
      css = { "prettier" },
      html = { "prettier" },
      json = { "prettier" },
      yaml = { "prettier" },
      markdown = { "prettier" },
    },
  },
}

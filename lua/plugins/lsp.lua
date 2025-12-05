return {
  {
    "williamboman/mason.nvim",
    config = true
  },
  {
    "neovim/nvim-lspconfig",
    version = "^2.0.0",
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
    config = function()
      vim.keymap.set("n", "gd", vim.lsp.buf.definition)
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation)
      vim.keymap.set("n", "K", vim.lsp.buf.hover)
      vim.keymap.set("i", "<C-k>", vim.lsp.buf.signature_help)
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
      vim.keymap.set("n", "gr", vim.lsp.buf.references)
      vim.keymap.set("n", "<leader>f", function()
        vim.lsp.buf.format { async = true }
      end)

      local lspconfig = require("lspconfig")

      require("mason-lspconfig").setup({
        ensure_installed = {
          "cssls",
          "html",
          "tailwindcss",
          "pyright",
          "ts_ls",
          "eslint",
          "gopls",
          "omnisharp",
          "rust_analyzer",
          "dockerls",
          "yamlls",
          "jsonls",
        },
        handlers = {
          function(server_name)
            lspconfig[server_name].setup({})
          end,
        }
      })

      -- System lua-ls
      lspconfig.lua_ls.setup({
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
            workspace = { library = vim.api.nvim_get_runtime_file("", true) },
          },
        },
      })

      vim.diagnostic.config({
        virtual_text = true,
        signs = true,
        underline = true,
        update_in_insert = true,
        severity_sort = true,
      })
    end
  }
}

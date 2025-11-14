return {
  {
    'williamboman/mason.nvim',
    config = true
  },
  {
    'neovim/nvim-lspconfig'
  },
  {
    'williamboman/mason-lspconfig.nvim',
    dependencies = { 'williamboman/mason.nvim', 'neovim/nvim-lspconfig' },
    config = function()
      require('mason-lspconfig').setup({
        ensure_installed = { 'lua_ls', 'pyright', 'ts_ls' },
        handlers = {
          function(server_name)
            require('lspconfig')[server_name].setup{}
          end
        }
      })
      
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
      vim.keymap.set('n', 'K', vim.lsp.buf.hover)
      vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename)
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action)
    end
  }
}

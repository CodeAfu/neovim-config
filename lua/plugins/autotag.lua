return {
  'windwp/nvim-ts-autotag',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = function()
    require('nvim-ts-autotag').setup({
      filetypes = {
        "typescriptreact",
        "javascriptreact",
        "tsx",
        "jsx",
        "html",
        "vue",
      }
    })
  end
}

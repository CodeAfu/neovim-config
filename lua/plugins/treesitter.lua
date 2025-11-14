return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = {
        'lua',
        'python',
        'javascript',
        'typescript',
        'html',
        'css',
        'tsx',
      },
      highlight = { enable = true },
      indent = { enable = true }
    })

    highlight = {
      enable = true,
    }

    autotage = {
      enable = true,
    }
  end
}

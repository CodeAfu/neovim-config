return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  lazy = false,

  init  = function()
    vim.g.catppuccin_transparent_background = true
  end,

  config = function()
    vim.cmd.colorscheme('catppuccin')
  end
}

return {
  'nvim-tree/nvim-tree.lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('nvim-tree').setup({
      filters = {
        dotfiles = false,
        git_ignored = false,
        custom = {}
      }
    })
    vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { silent = true })
  end
}

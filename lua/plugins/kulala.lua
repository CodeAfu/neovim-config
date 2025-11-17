return {
  'mistweaverco/kulala.nvim',
  ft = 'http',
  config = function()
    require('kulala').setup()
  end,
  keys = {
    { '<leader>rr', "<cmd>lua require('kulala').run()<cr>", desc = 'Run request' },
  },
}

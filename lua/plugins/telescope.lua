return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8', -- Recommended to pin to a stable release
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    -- This 'config' function runs after the plugin is loaded
    local builtin = require('telescope.builtin')

    -- Set keymaps
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[F]ind [F]iles' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = '[F]ind [G]rep' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = '[F]ind [B]uffers' })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = '[F]ind [H]elp Tags' })
  end
}

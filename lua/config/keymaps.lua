vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { noremap = true, silent = true })

-- Terminal escape
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

-- Window navigation
vim.keymap.set({ 'n', 'i', 't' }, '<A-h>', '<C-\\><C-n><C-w>h')
vim.keymap.set({ 'n', 'i', 't' }, '<A-l>', '<C-\\><C-n><C-w>l')

-- Indent in visual mode
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- Move lines
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==')
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==')
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv")

-- Toggle wrap
vim.keymap.set('n', '<leader>tw', ':set wrap!<CR>', { noremap = true, silent = true, desc = 'Toggle Wrap' })

-- Terminal
vim.keymap.set('n', '<leader>t', ':belowright split | terminal<CR>', { silent = true })
vim.keymap.set('n', '<leader>tv', ':belowright vsplit | terminal<CR>', { silent = true })

-- Save
vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = 'Save file' })

-- Tooltip
vim.keymap.set('i', '<C-k>', vim.lsp.buf.signature_help, { desc = "Signature help" })

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic (file)' })
vim.keymap.set('n', '<leader>qq', vim.diagnostic.setqflist, { desc = 'Open diagnostic (project)' })

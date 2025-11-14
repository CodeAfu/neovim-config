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

-- Terminal
vim.keymap.set('n', '<leader>t', ':belowright split | terminal<CR>', { silent = true })
vim.keymap.set('n', '<leader>tv', ':belowright vsplit | terminal<CR>', { silent = true })


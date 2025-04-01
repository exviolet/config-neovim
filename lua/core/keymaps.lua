-- NeoTree
vim.keymap.set('n', '<C-e>', ':NeoTreeFloat<CR>')
vim.keymap.set('n', '<C-b>', ':NeoTreeFocus<CR>')

-- Bindings
vim.keymap.set('n', '<esc>', ':nohlsearch<CR>', { noremap = true, silent = true})

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
vim.keymap.set('v', '<', "<gv", opts)
vim.keymap.set('v', '>', ">gv", opts)

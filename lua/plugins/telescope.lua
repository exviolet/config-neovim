local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>fw', builtin.live_grep, { desc = 'Telescope live grep' })

vim.keymap.set('n', '*', builtin.grep_string, {})
vim.keymap.set('n', '<leader>gb', builtin.git_branches, { desc = '' })
vim.keymap.set('n', '<leader>gc', builtin.git_commits, { desc = '' })
vim.keymap.set('n', '<leader>gs', builtin.git_status, { desc = '' })
vim.keymap.set('n', '<leader>ls', builtin.lsp_document_symbols, { desc = '' })
vim.keymap.set('n', 'gr', builtin.lsp_references, 
		{noremap = true, silent = true})
vim.keymap.set('n', 'gd', builtin.lsp_definitions,
		{noremap = true, silent = true})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({previewer = false}))<cr>", {})
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
vim.keymap.set('n', '<leader>gb', builtin.git_branches, {}) 
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<leader>ff', ':Telescope find_files follow=true hidden=true<cr>', opts)
map('n', '<leader>fg', ':Telescope live_grep<cr>', opts)
map('n', '<leader>fb', ':Telescope buffers<cr>', opts)
map('n', '<leader>fh', ':Telescope help_tags<cr>', opts)

map('n', '<leader>n', ':NvimTreeToggle<cr>', opts)

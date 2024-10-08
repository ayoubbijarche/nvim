vim.g.mapleader = ' '
local leader_key = ' '
vim.api.nvim_set_keymap('n', leader_key .. '<Left>',  ':wincmd h<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', leader_key .. '<Down>', ':wincmd j<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', leader_key .. '<Up>',   ':wincmd k<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', leader_key .. '<Right>',':wincmd l<CR>', { noremap = true })
vim.api.nvim_set_keymap('n' , '<Leader>t', ':NvimTreeToggle<CR>' , { noremap = true, silent = true })
vim.api.nvim_set_keymap('n' , '<Leader>q', ':q<CR>' , { noremap = true, silent = true })
vim.api.nvim_set_keymap('n' , '<Leader>h', ':vsplit<CR>' , { noremap = true, silent = true })
vim.api.nvim_set_keymap('n' , '<Leader>v', ':split<CR>' , { noremap = true, silent = true })
vim.api.nvim_set_keymap('n' , '<Leader>a', ':terminal<CR>' , { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>f', ':Telescope find_files<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fg', ':Telescope buffers<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fh', ':Telescope help_tags<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>m', ':BufferNext<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>k', ':BufferPrevious<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>p', ':BufferMoveNext<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>o', ':BufferMovePrevious<cr>', { noremap = true, silent = true })











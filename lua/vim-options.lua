vim.g.mapleader = " " -- Set space as the leader ke 
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.g.background = "light"

vim.opt.swapfile = false

-- Open terminal below (horizontal split)
vim.keymap.set('n', '<leader>td', ':split | wincmd j | terminal<CR>', { noremap = true, silent = true })

-- Open terminal on the right (vertical split)
vim.keymap.set('n', '<leader>tr', ':vsplit | wincmd l | terminal<CR>', { noremap = true, silent = true })

-- Window navigation in Normal mode
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })  -- Left
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })  -- Down
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })  -- Up
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })  -- Right

-- Window navigation in Terminal mode
vim.keymap.set('t', '<C-h>', [[<C-\><C-n><C-w>h]], { noremap = true, silent = true })  -- Left
vim.keymap.set('t', '<C-j>', [[<C-\><C-n><C-w>j]], { noremap = true, silent = true })  -- Down
vim.keymap.set('t', '<C-k>', [[<C-\><C-n><C-w>k]], { noremap = true, silent = true })  -- Up
vim.keymap.set('t', '<C-l>', [[<C-\><C-n><C-w>l]], { noremap = true, silent = true })  -- Right

-- Exit insert mode and navigate windows
vim.keymap.set('i', '<C-h>', [[<Esc><C-w>h]], { noremap = true, silent = true })  -- Left
vim.keymap.set('i', '<C-j>', [[<Esc><C-w>j]], { noremap = true, silent = true })  -- Down
vim.keymap.set('i', '<C-k>', [[<Esc><C-w>k]], { noremap = true, silent = true })  -- Up
-- Clear search highlighting
vim.keymap.set('n', '<leder>h', ':nohlsearch<CR>', { noremap = true, silent = true })

-- Enable line numbers
vim.wo.number = true


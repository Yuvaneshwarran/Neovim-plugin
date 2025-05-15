local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("vim-options")
require("lazy").setup("plugins")

vim.keymap.set("n", "<leader>rs", function()
  for name,_ in pairs(package.loaded) do
    if name:match("^user") or name:match("^plugins") then
      package.loaded[name] = nil
    end
  end
  dofile(vim.env.MYVIMRC)
end, { desc = "Reload Neovim config" })


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



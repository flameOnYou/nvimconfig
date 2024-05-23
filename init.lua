-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.opt.termguicolors = true
vim.opt.relativenumber = false
require("nvim-tree").setup()
-- 设置键映射选项
local opts = { noremap = true, silent = true }

-- 映射 <A-m> 键来切换 NvimTree
local map = vim.api.nvim_set_keymap
map("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

vim.g.autoformat = false
--LazyVim.lazygit.theme.selectedLineBgColor = { bg = "Visual" } 
vim.g.lazygit_config = false
LazyVim.lazygit.theme.selectedLineBgColor = { bg = "Visual" } 
vim.opt.cursorline = true

-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
require('bufferline').setup({
  hide = {extensions = true},
  icons = {
    -- Configure the base icons on the bufferline.
    buffer_index = true,
    buffer_number = false,
    -- Enables / disables diagnostic symbols
  }
})

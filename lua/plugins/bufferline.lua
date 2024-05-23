return {
  {
    "yorickpeterse/nvim-window",
    keys = {
      { "<leader>n", "<cmd>lua require('nvim-window').pick()<cr>", desc = "nvim-window: Jump to window" },
    },
    config = true,
  },
  {
    "numToStr/Comment.nvim",
    opts = {
      -- add any options here
    },
    lazy = false,
  },
  "nvim-tree/nvim-tree.lua",

  { 'romgrk/barbar.nvim',
    requires = {'nvim-tree/nvim-web-devicons'},
  },
  {
    'akinsho/bufferline.nvim',
    config = function()
      require('bufferline').setup({
        hide = { extensions = true },
        icons = {
          -- Configure the base icons on the bufferline.
          buffer_index = true,
          buffer_number = false,
          -- Enables / disables diagnostic symbols
        }
      })
    end
  },
}

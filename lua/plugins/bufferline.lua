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
    requires = {'nvim-tree/nvim-web-devicons'}
  }
}

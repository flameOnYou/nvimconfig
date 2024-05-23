return {
  -- 其他插件配置 ...

  -- 添加 auto-session 插件
  {
    "rmagatti/auto-session",
    config = function()
      require('auto-session').setup {
        log_level = 'info',
        auto_session_enable_last_session = false,
        auto_session_root_dir = vim.fn.stdpath('data').."/sessions/",
        auto_session_enabled = true,
        auto_save_enabled = true,
        auto_restore_enabled = true,
        auto_session_suppress_dirs = nil,
      }
    end
  },

  -- 添加 session-lens 插件（可选）
  {
    "rmagatti/session-lens",
    requires = { "nvim-telescope/telescope.nvim" },
    config = function()
      require('session-lens').setup {
        path_display = {'shorten'},
        theme_conf = { border = true },
        previewer = false,
      }
      require('telescope').load_extension('session-lens')
    end
  }
}

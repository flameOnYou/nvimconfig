return {
    'neovim/nvim-lspconfig',
    config = function()
      -- 配置语言服务器
      local lspconfig = require('lspconfig')
      local util = require('lspconfig/util')

      -- 自动检测虚拟环境路径的函数
      local function get_python_path(workspace)
        -- 如果当前有激活的虚拟环境，则使用该虚拟环境
        if vim.env.VIRTUAL_ENV then
          return vim.env.VIRTUAL_ENV .. '/bin/python'
        end

        -- 查找并使用工作目录中的虚拟环境
        local match = vim.fn.glob(util.path.join(workspace, 'venv'))
        if match ~= '' then
          return util.path.join(match, 'bin', 'python')
        end

        -- 查找并使用 `.venv` 目录中的虚拟环境
        match = vim.fn.glob(util.path.join(workspace, '.venv'))
        if match ~= '' then
          return util.path.join(match, 'bin', 'python')
        end

        -- 查找并使用 `env` 目录中的虚拟环境
        match = vim.fn.glob(util.path.join(workspace, 'env'))
        if match ~= '' then
          return util.path.join(match, 'bin', 'python')
        end

        -- 默认回退到系统 Python
        return vim.fn.exepath('python3') or vim.fn.exepath('python') or 'python'
      end

      -- 配置 pyright 以使用检测到的虚拟环境
      lspconfig.pyright.setup{
        on_init = function(client)
          client.config.settings.python.pythonPath = get_python_path(client.config.root_dir)
        end,
        settings = {
          python = {
            analysis = {
              autoSearchPaths = true,
              useLibraryCodeForTypes = true,
            },
          },
        },
      }

      -- 添加其他语言服务器配置
      -- lspconfig.tsserver.setup{}
      -- lspconfig.sumneko_lua.setup{}
    end
  }

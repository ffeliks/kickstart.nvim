return {
  'nvim-neotest/neotest',
  version = '*',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
    'nvim-neotest/neotest-go',
  },
  config = function()
    vim.keymap.set('n', '<leader>ts', function()
      require('neotest').run.run(vim.fn.getcwd())
    end, { desc = 'Tests suite' })

    vim.keymap.set('n', '<leader>tf', function()
      require('neotest').run.run(vim.fn.expand '%')
    end, { desc = 'Test file' })

    vim.keymap.set('n', '<leader>tt', function()
      require('neotest').run.run()
    end, { desc = 'Test current method' })

    vim.keymap.set('n', '<leader>tp', function()
      require('neotest').output_panel.toggle()
    end, { desc = 'Toggle test panel' })

    vim.keymap.set('n', '<leader>tP', function()
      require('neotest').summary.toggle()
    end, { desc = 'Toggle test summary window' })

    -- get neotest namespace (api call creates or returns namespace)
    local neotest_ns = vim.api.nvim_create_namespace 'neotest'
    vim.diagnostic.config({
      virtual_text = {
        format = function(diagnostic)
          local message = diagnostic.message:gsub('\n', ' '):gsub('\t', ' '):gsub('%s+', ' '):gsub('^%s+', '')
          return message
        end,
      },
    }, neotest_ns)
    require('neotest').setup {
      -- your neotest config here
      adapters = {
        require 'neotest-go' {
          recursive_run = true,
        },
      },
    }
  end,
}

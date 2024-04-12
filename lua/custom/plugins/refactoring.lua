return {
  {
    'theprimeagen/refactoring.nvim',
    version = '*',
    config = function()
      require('refactoring').setup()

      vim.keymap.set('x', '<leader>rf', ':Refactor extract ', { desc = 'Extract function' })
      -- vim.keymap.set('x', '<leader>rf', ':Refactor extract_to_file ')

      vim.keymap.set('x', '<leader>rv', ':Refactor extract_var ', { desc = 'Extract variable' })

      -- vim.keymap.set({ 'n', 'x' }, '<leader>ri', ':Refactor inline_var')

      -- vim.keymap.set('n', '<leader>rI', ':Refactor inline_func')

      -- vim.keymap.set('n', '<leader>rb', ':Refactor extract_block')
      -- vim.keymap.set('n', '<leader>rbf', ':Refactor extract_block_to_file')
    end,
  },
}

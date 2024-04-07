return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = function()
      require('toggleterm').setup()

      vim.keymap.set('n', '<A-t>', ':ToggleTerm<CR>', { desc = 'Toggle a terminal window' })
    end,
  },
}

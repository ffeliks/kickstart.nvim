return {
  'nvim-lualine/lualine.nvim',
  version = '*',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      options = { theme = 'tokyonight' },
      -- options = { theme = 'dracula' },
    }
  end,
}

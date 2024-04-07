return {
  'olexsmir/gopher.nvim',
  version = '*',
  config = function()
    require('gopher').setup {
      commands = {
        go = 'go',
        gomodifytags = 'gomodifytags',
        gotests = '~/go/bin/gotests', -- also you can set custom command path
        impl = 'impl',
        iferr = 'iferr',
      },
    }
  end,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
}

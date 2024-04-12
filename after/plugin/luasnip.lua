local ls = require 'luasnip'
-- s(<trigger>, <nodes>, <opts)
local s = ls.s
local t = ls.t
local i = ls.i

-- local d = ls.dynamic_node
-- local c = ls.choice_node
-- local f = ls.function_node
-- local sn = ls.snippet_node

local fmt = require('luasnip.extras.fmt').fmt
-- local rep = require('luasnip.extras').rep

vim.keymap.set('n', '<leader><leader>s', '<cmd>source ~/.config/nvim/after/plugin/luasnip.lua<CR>')

ls.add_snippets('go', {
  s(
    'trun',
    fmt(
      [[
  	t.Run("{}", func(t *testing.T) {{
	  {}
	}})
  ]],
      { i(1), i(2) }
    )
  ),
})

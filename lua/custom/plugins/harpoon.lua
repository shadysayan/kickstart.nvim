vim.pack.add {
  gh 'nvim-lua/plenary.nvim',
  gh 'ThePrimeagen/harpoon',
}

local harpoon = require('harpoon')
harpoon:setup()

local map = vim.keymap.set
local list = function() return harpoon:list() end

map('n', '<leader>a', function() list():add() end)
map('n', '<C-e>',     function() harpoon.ui:toggle_quick_menu(list()) end)
map('n', '<C-h>',     function() list():select(1) end)
map('n', '<C-t>',     function() list():select(2) end)
map('n', '<C-n>',     function() list():select(3) end)
map('n', '<C-s>',     function() list():select(4) end)
map('n', '<C-S-P>',   function() list():prev() end)
map('n', '<C-S-N>',   function() list():next() end)
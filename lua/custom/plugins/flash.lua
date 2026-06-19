vim.pack.add { gh 'folke/flash.nvim' }

local flash = require('flash')
flash.setup()

local map = vim.keymap.set
map({ 'n', 'x', 'o' }, 'zk',    function() flash.jump() end,             { desc = 'Flash' })
map({ 'n', 'x', 'o' }, 'ZK',    function() flash.treesitter() end,        { desc = 'Flash Treesitter' })
map('o',               'r',     function() flash.remote() end,            { desc = 'Remote Flash' })
map({ 'o', 'x' },     'R',     function() flash.treesitter_search() end, { desc = 'Treesitter Search' })
map('c',               '<c-s>', function() flash.toggle() end,            { desc = 'Toggle Flash Search' })
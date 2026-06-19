vim.pack.add { gh 'folke/snacks.nvim' }

require('snacks').setup({
  bigfile      = { enabled = true },
  dashboard = { enabled = false },
  indent       = { enabled = true },
  input        = { enabled = true },
  notifier     = { enabled = false, timeout = 3000 },
  quickfile    = { enabled = true },
  scroll       = { enabled = true },
  statuscolumn = { enabled = true },
  words        = { enabled = true },
  styles       = { notification = {} },
})

local map = vim.keymap.set
map('n',         '<leader>z',  function() Snacks.zen() end,                     { desc = 'Toggle Zen Mode' })
map('n',         '<leader>Z',  function() Snacks.zen.zoom() end,                { desc = 'Toggle Zoom' })
map('n',         '<leader>.',  function() Snacks.scratch() end,                 { desc = 'Toggle Scratch Buffer' })
map('n',         '<leader>S',  function() Snacks.scratch.select() end,          { desc = 'Select Scratch Buffer' })
map('n',         '<leader>n',  function() Snacks.notifier.show_history() end,   { desc = 'Notification History' })
map('n',         '<leader>bd', function() Snacks.bufdelete() end,               { desc = 'Delete Buffer' })
map('n',         '<leader>cR', function() Snacks.rename.rename_file() end,      { desc = 'Rename File' })
map({ 'n', 'v'}, '<leader>gB', function() Snacks.gitbrowse() end,               { desc = 'Git Browse' })
map('n',         '<leader>gb', function() Snacks.git.blame_line() end,          { desc = 'Git Blame Line' })
map('n',         '<leader>gf', function() Snacks.lazygit.log_file() end,        { desc = 'Lazygit Current File History' })
map('n',         '<leader>gg', function() Snacks.lazygit() end,                 { desc = 'Lazygit' })
map('n',         '<leader>gl', function() Snacks.lazygit.log() end,             { desc = 'Lazygit Log (cwd)' })
map('n',         '<leader>un', function() Snacks.notifier.hide() end,           { desc = 'Dismiss All Notifications' })
map('n',         '<c-/>',      function() Snacks.terminal() end,                { desc = 'Toggle Terminal' })
map('n',         '<c-_>',      function() Snacks.terminal() end,                { desc = 'which_key_ignore' })
map({ 'n', 't'}, ']]',         function() Snacks.words.jump(vim.v.count1) end,  { desc = 'Next Reference' })
map({ 'n', 't'}, '[[',         function() Snacks.words.jump(-vim.v.count1) end, { desc = 'Prev Reference' })
map('n', '<leader>N', function()
  Snacks.win({
    file   = vim.api.nvim_get_runtime_file('doc/news.txt', false)[1],
    width  = 0.6,
    height = 0.6,
    wo     = { spell = false, wrap = false, signcolumn = 'yes', statuscolumn = ' ', conceallevel = 3 },
  })
end, { desc = 'Neovim News' })

_G.dd     = function(...) Snacks.debug.inspect(...) end
_G.bt     = function() Snacks.debug.backtrace() end
vim.print = _G.dd

Snacks.toggle.option('spell',          { name = 'Spelling' }):map '<leader>us'
Snacks.toggle.option('wrap',           { name = 'Wrap' }):map '<leader>uw'
Snacks.toggle.option('relativenumber', { name = 'Relative Number' }):map '<leader>uL'
Snacks.toggle.diagnostics():map '<leader>ud'
Snacks.toggle.line_number():map '<leader>ul'
Snacks.toggle.option('conceallevel',   { off = 0, on = vim.o.conceallevel > 0 and vim.o.conceallevel or 2 }):map '<leader>uc'
Snacks.toggle.treesitter():map '<leader>uT'
Snacks.toggle.option('background',     { off = 'light', on = 'dark', name = 'Dark Background' }):map '<leader>ub'
Snacks.toggle.inlay_hints():map '<leader>uh'
Snacks.toggle.indent():map '<leader>ug'
Snacks.toggle.dim():map '<leader>uD'
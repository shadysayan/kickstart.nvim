vim.pack.add { gh 'folke/zen-mode.nvim' }

local zen = require('zen-mode')

vim.keymap.set('n', '<leader>zz', function()
  zen.setup({ window = { width = 90, options = {} } })
  zen.toggle()
  vim.wo.wrap   = false
  vim.wo.number = true
  vim.wo.rnu    = true
  ColorMyPencils()
end)

vim.keymap.set('n', '<leader>zZ', function()
  zen.setup({ window = { width = 80, options = {} } })
  zen.toggle()
  vim.wo.wrap         = false
  vim.wo.number       = false
  vim.wo.rnu          = false
  vim.opt.colorcolumn = '0'
  ColorMyPencils()
end)
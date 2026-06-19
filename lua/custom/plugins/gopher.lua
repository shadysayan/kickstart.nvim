vim.pack.add { gh 'olexsmir/gopher.nvim' }

vim.api.nvim_create_autocmd('FileType', {
  pattern  = 'go',
  once     = true,
  callback = function()
    require('gopher').setup()
    vim.cmd('silent! GoInstallDeps')
  end,
})
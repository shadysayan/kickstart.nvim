local keymap = vim.keymap

keymap.set('n', '<C-d>', '<C-d>zz')
keymap.set('n', '<C-u>', '<C-u>zz')

keymap.set('n', 'n', 'nzzzv')
keymap.set('n', 'N', 'Nzzzv')

keymap.set('n', 'x', [["_dP]], { desc = 'Delete highlighted word into void register, then paste' })
keymap.set('n', 'x', '"_x', { desc = 'Delete single character without copying into register' })

keymap.set('n', '<C-a>', 'gg<S-v>G', { desc = 'Select all' })

keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move highlighted lines up' })
keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move highlighted lines down' })

keymap.set('n', '<leader>ee', 'oif err != nil {<CR>}<Esc>Oreturn err<Esc>', { desc = 'Golang [e]rr != nil' })

keymap.set('n', '<leader>x', '<Cmd>!chmod +x %<CR>', { desc = 'Make current file e[X]ecutable' })

keymap.set('n', '<C-f>', ':silent !tmux neww tmux-sessionizer\n', { desc = 'Create new tmux session' })

keymap.set('n', '<leader>su', '<cmd>Telescope undo<cr>', { desc = '<cmd>[S]earch [U]ndo History' })
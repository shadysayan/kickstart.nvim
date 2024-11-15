function ColorMyPencils(color)
  color = color or 'catppuccin'
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
end

return {
  {
    -- 'maxmx03/dracula.nvim',
    -- 'rose-pine/neovim',
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = false,
    priority = 1000,
    init = function()
      ColorMyPencils()
    end,
    opts = {
      flavour = 'mocha',
      transparent_background = true,
      styles = {
        transparency = true,
      },
      no_italic = true,
    },
  },
  {
    'maxmx03/dracula.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      ---@type dracula
      local dracula = require 'dracula'

      dracula.setup {
        styles = {
          Type = {},
          Function = {},
          Parameter = {},
          Property = {},
          Comment = {},
          String = {},
          Keyword = {},
          Identifier = {},
          Constant = {},
        },
        transparent = true,
        on_colors = function(colors, color)
          ---@type dracula.palette
          return {
            -- override or create new colors
            mycolor = '#ffffff',
            -- mycolor = 0xffffff,
          }
        end,
        on_highlights = function(colors, color)
          ---@type dracula.highlights
          return {
            ---@type vim.api.keyset.highlight
            Normal = { fg = colors.mycolor },
          }
        end,
        plugins = {
          ['nvim-treesitter'] = true,
          ['rainbow-delimiters'] = true,
          ['nvim-lspconfig'] = true,
          ['nvim-navic'] = true,
          ['nvim-cmp'] = true,
          ['indent-blankline.nvim'] = true,
          ['neo-tree.nvim'] = true,
          ['nvim-tree.lua'] = true,
          ['which-key.nvim'] = true,
          ['dashboard-nvim'] = true,
          ['gitsigns.nvim'] = true,
          ['neogit'] = true,
          ['todo-comments.nvim'] = true,
          ['lazy.nvim'] = true,
          ['telescope.nvim'] = true,
          ['noice.nvim'] = true,
          ['hop.nvim'] = true,
          ['mini.statusline'] = true,
          ['mini.tabline'] = true,
          ['mini.starter'] = true,
          ['mini.cursorword'] = true,
          ['bufferline.nvim'] = true,
        },
      }
      -- vim.cmd.colorscheme 'dracula'
      -- vim.cmd.colorscheme 'dracula-soft'
      ColorMyPencils()
    end,
  },
  {
    'folke/tokyonight.nvim',
    priority = 1000,
    config = function()
      require('tokyonight').setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        style = 'storm', -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
        transparent = true, -- Enable this to disable setting the background color
        terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
        styles = {
          -- Style to be applied to different syntax groups
          -- Value is any valid attr-list value for `:help nvim_set_hl`
          comments = { italic = false },
          keywords = { italic = false },
          -- Background styles. Can be "dark", "transparent" or "normal"
          sidebars = 'dark', -- style for sidebars, see below
          floats = 'dark', -- style for floating windows
        },
      }
    end,
  },
  {
    'rose-pine/neovim',
    priority = 1000,
    name = 'rose-pine',
    config = function()
      require('rose-pine').setup {
        disable_background = true,
        styles = {
          italic = false,
        },
      }

      ColorMyPencils()
    end,
  },
}

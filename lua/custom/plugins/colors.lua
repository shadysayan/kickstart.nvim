function ColorMyPencils(color)
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'Pmenu', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'Terminal', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'EndOfBuffer', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'FoldColumn', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'Folded', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NormalNC', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'WhichKeyFloat', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'TelescopeBorder', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'TelescopeNormal', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'TelescopePromptBorder', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'TelescopePromptTitle', { bg = 'none' })

  -- transparent background for neotree
  vim.api.nvim_set_hl(0, 'NeoTreeNormal', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NeoTreeNormalNC', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NeoTreeVertSplit', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NeoTreeWinSeparator', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NeoTreeEndOfBuffer', { bg = 'none' })

  -- transparent background for nvim-tree
  vim.api.nvim_set_hl(0, 'NvimTreeNormal', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NvimTreeVertSplit', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NvimTreeEndOfBuffer', { bg = 'none' })

  -- transparent notify background
  vim.api.nvim_set_hl(0, 'NotifyINFOBody', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NotifyERRORBody', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NotifyWARNBody', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NotifyTRACEBody', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NotifyDEBUGBody', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NotifyINFOTitle', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NotifyERRORTitle', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NotifyWARNTitle', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NotifyTRACETitle', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NotifyDEBUGTitle', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NotifyINFOBorder', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NotifyERRORBorder', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NotifyWARNBorder', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NotifyTRACEBorder', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NotifyDEBUGBorder', { bg = 'none' })
end

return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = false,
    priority = 1000,
    config = function()
      -- ColorMyPencils()
    end,
    opts = {
      flavour = 'mocha',
      no_italic = true,
      styles = {
        transparency = true,
      },
      transparent_background = true,
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
        transparent = true,
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

      -- ColorMyPencils()
    end,
  },

  {
    'folke/tokyonight.nvim',
    priority = 1000,
    config = function()
      require('tokyonight').setup {
        style = 'storm',
        -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
        transparent = true,
        terminal_colors = true,
        styles = {
          comments = { italic = false },
          keywords = { italic = false },
          sidebars = 'dark',
          floats = 'dark',
        },
        on_colors = function(_) end,
        on_highlights = function(_, _) end,
      }

      -- ColorMyPencils()
    end,
  },

  {
    'rose-pine/neovim',
    priority = 1000,
    name = 'rose-pine',
    config = function()
      require('rose-pine').setup {
        styles = { italic = false },
        disable_background = true,
      }

      -- ColorMyPencils 'rose-pine'
    end,
  },

  {
    'RRethy/base16-nvim',
    priority = 1000,
    config = function()
      ColorMyPencils 'base16-black-metal'
    end,
  },
}

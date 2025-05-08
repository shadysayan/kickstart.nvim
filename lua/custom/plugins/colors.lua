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
      ColorMyPencils 'catppuccin'
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

      -- ColorMyPencils 'dracula'
    end,
  },

  {
    'folke/tokyonight.nvim',
    priority = 1000,
    config = function()
      require('tokyonight').setup {
        style = 'moon', -- The theme comes in three styles, `storm`, a darker variant `night` and `day`
        light_style = 'day', -- The theme is used when the background is set to light
        transparent = true, -- Enable this to disable setting the background color
        terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
        styles = {
          -- Style to be applied to different syntax groups
          -- Value is any valid attr-list value for `:help nvim_set_hl`
          comments = { italic = true },
          keywords = { italic = true },
          functions = {},
          variables = {},
          -- Background styles. Can be "dark", "transparent" or "normal"
          sidebars = 'dark', -- style for sidebars, see below
          floats = 'dark', -- style for floating windows
        },
        day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
        dim_inactive = false, -- dims inactive windows
        lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

        --- You can override specific color groups to use other groups or a hex color
        --- function will be called with a ColorScheme table
        ---@param colors ColorScheme
        on_colors = function(colors) end,

        --- You can override specific highlights to use other groups or a hex color
        --- function will be called with a Highlights and ColorScheme table
        ---@param highlights tokyonight.Highlights
        ---@param colors ColorScheme
        on_highlights = function(highlights, colors) end,

        cache = true, -- When set to true, the theme will be cached for better performance

        ---@type table<string, boolean|{enabled:boolean}>
        plugins = {
          -- enable all plugins when not using lazy.nvim
          -- set to false to manually enable/disable plugins
          all = package.loaded.lazy == nil,
          -- uses your plugin manager to automatically enable needed plugins
          -- currently only lazy.nvim is supported
          auto = true,
          -- add any plugins here that you want to enable
          -- for all possible plugins, see:
          --   * https://github.com/folke/tokyonight.nvim/tree/main/lua/tokyonight/groups
          -- telescope = true,
        },
      }

      -- ColorMyPencils 'tokyonight-moon'
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
      -- ColorMyPencils 'base16-black-metal'
    end,
  },
}

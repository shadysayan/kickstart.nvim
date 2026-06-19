-- read omarchy's current colorscheme from their neovim.lua spec
local function get_omarchy_colorscheme()
  local theme_file = vim.fn.expand('~/.config/omarchy/current/theme/neovim.lua')
  if vim.fn.filereadable(theme_file) == 0 then return nil, nil end
  local ok, spec = pcall(dofile, theme_file)
  if not ok or type(spec) ~= 'table' then return nil, nil end
  local colorscheme, plugin = nil, nil
  for _, entry in ipairs(spec) do
    if type(entry) == 'table' then
      if entry[1] == 'LazyVim/LazyVim' then
        colorscheme = entry.opts and entry.opts.colorscheme
      elseif entry[1] and entry[1] ~= 'LazyVim/LazyVim' then
        plugin = entry[1]
      end
    end
  end
  return colorscheme, plugin
end

local omarchy_color, omarchy_plugin = get_omarchy_colorscheme()

-- install omarchy's theme plugin dynamically
if omarchy_plugin then
  vim.pack.add { gh(omarchy_plugin) }
end

vim.pack.add {
  gh 'catppuccin/nvim',
  gh 'maxmx03/dracula.nvim',
  gh 'folke/tokyonight.nvim',
  gh 'rose-pine/neovim',
  gh 'RRethy/base16-nvim',
  gh 'scottmckendry/cyberdream.nvim',
}

function ColorMyPencils(color)
  color = color or omarchy_color or 'cyberdream'
  vim.cmd.colorscheme(color)
  local transparent = {
    'Normal', 'NormalFloat', 'FloatBorder', 'Pmenu', 'Terminal',
    'EndOfBuffer', 'FoldColumn', 'Folded', 'SignColumn', 'NormalNC',
    'WhichKeyFloat', 'TelescopeBorder', 'TelescopeNormal',
    'TelescopePromptBorder', 'TelescopePromptTitle',
    'NeoTreeNormal', 'NeoTreeNormalNC', 'NeoTreeVertSplit',
    'NeoTreeWinSeparator', 'NeoTreeEndOfBuffer',
    'NvimTreeNormal', 'NvimTreeVertSplit', 'NvimTreeEndOfBuffer',
    'NotifyINFOBody', 'NotifyERRORBody', 'NotifyWARNBody',
    'NotifyTRACEBody', 'NotifyDEBUGBody',
    'NotifyINFOTitle', 'NotifyERRORTitle', 'NotifyWARNTitle',
    'NotifyTRACETitle', 'NotifyDEBUGTitle',
    'NotifyINFOBorder', 'NotifyERRORBorder', 'NotifyWARNBorder',
    'NotifyTRACEBorder', 'NotifyDEBUGBorder',
  }
  for _, hl in ipairs(transparent) do
    vim.api.nvim_set_hl(0, hl, { bg = 'none' })
  end
end

require('catppuccin').setup({
  flavour = 'macchiato',
  no_italic = true,
  transparent_background = true,
})
require('dracula').setup({ transparent = true })
require('tokyonight').setup({ transparent = true })
require('rose-pine').setup({
  styles = { italic = false },
  disable_background = true,
})
require('cyberdream').setup({
  transparent = true,
  saturation = 0.5,
})

ColorMyPencils()
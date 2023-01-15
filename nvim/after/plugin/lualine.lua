-- TEMA POR DEFECTO (modificado)

local colors = {            --colores por defecto
  bg       = '#202328',      --'#202328',
  fg       = '#bbc2cf',      --'#bbc2cf',
  yellow   = '#ECBE7B',      --'#ECBE7B',
  cyan     = '#008080',      --'#008080',
  darkblue = '#081633',      --'#081633',
  green    = '#98be65',      --'#98be65',
  orange   = '#FF8800',      --'#FF8800',
  violet   = '#a9a1e1',      --'#a9a1e1',
  magenta  = '#c678dd',      --'#c678dd',
  blue     = '#51afef',      --'#51afef',
  red      = '#D50B16',      --'#D50B16',
}
local mode = {
  function()
    return " "  --' ', " ", ' ', ' ', ' '
  end,
  color = function()
      --- auto change color according to neovims mode
    local mode_color = {
      --- All modes with one color
      n, i, v, V, c, no, s, S, ic, R, Rv, cv, ce,
      r, rm, t = colors.darkblue

      --- One color for each mode

      --n = colors.red,
      --i = colors.green,
      --v = colors.blue,
      --[''] = colors.blue,
      --V = colors.blue,
      --c = colors.magenta,
      --no = colors.red,
      --s = colors.orange,
      --S = colors.orange,
      --[''] = colors.orange,
      --ic = colors.yellow,
      --R = colors.violet,
      --Rv = colors.violet,
      --cv = colors.red,
      --ce = colors.red,
      --r = colors.cyan,
      --rm = colors.cyan,
      --['r?'] = colors.cyan,
      --['!'] = colors.red,
      --t = colors.red,
    }
    return { fg = mode_color[vim.fn.mode()] }
  end,
  padding = { right = 1 },
}

-- TEMA POR DEFECTO

require('lualine').setup {

  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = '',
    --section_separators = { left = '', right = '' },

    section_separators = { left = '', right = '' },

    --component_separators = { left = '', right = ''},
    --section_separators = { left = '', right = ''},

    disabled_filetypes = {'NvimTree', 'undotree', 'diff'},
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = {mode},
      --{ 'mode', separator = { left = '' }, right_padding = 2 },
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {--[['encoding']]'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
      --{ separator = { right = '' }, left_padding = 2 },
  },
  tabline = {},
  extensions = {}
}


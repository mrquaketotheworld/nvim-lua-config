require('lualine').setup({
  options = {
    theme = 'auto',
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_b = { { 'branch', icon = '' } },
    lualine_y = {},
    lualine_z = { '%c', '%l/%L' }
  },
})

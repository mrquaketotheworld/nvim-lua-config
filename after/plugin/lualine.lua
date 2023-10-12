require('lualine').setup({
  options = {
    theme = 'auto',
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_c = {'%F'},
    lualine_y = {},
    lualine_z = { '%v', '%l/%L' }
  },
})

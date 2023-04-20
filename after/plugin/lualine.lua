require('lualine').setup({
  options = {
    theme = 'auto',
  },
  sections = {
    lualine_y = {},
    lualine_z = { '%c', '%l/%L' }
  }
})

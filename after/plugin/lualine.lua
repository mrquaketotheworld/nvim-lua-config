require('lualine').setup({
  options = {
    theme = 'auto',
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_c = { '%F', "%(%{repeat(printf('%s',!&iminsert?'en':get(b:,'keymap_name','en')),mode()==#'i')}%)" },
    lualine_y = { '%v' },
    lualine_z = { '%l/%L' }
  },
})

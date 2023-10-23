local ls = require('luasnip')
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets('clojure', {
  s('p', {
    t('(println '),
    i(1),
    t(')'),
  })
})

ls.add_snippets('javascript', {
  s('p', {
    t('console.log('),
    i(1),
    t(')'),
  })
})

ls.add_snippets('go', {
  s('p', {
    t('fmt.Println('),
    i(1),
    t(')'),
  })
})

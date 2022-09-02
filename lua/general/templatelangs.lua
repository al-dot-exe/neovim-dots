-- support for templating languages. 
-- just ejs and htmldjango for now

vim.filetype.add({
  extension = {
    htmldjango = "htmldjango.html",
    ejs = "ejs.html"
  },
})

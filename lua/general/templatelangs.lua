-- support for templating languages. 
-- so far htmldjango, ejs, and hbs

vim.filetype.add({
  extension = {
    htmldjango = "htmldjango.html",
    ejs = "ejs.html",
    hbs = "hbs.html"
  },
})

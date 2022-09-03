local status_ok, pandoc = pcall(require, "pandoc")

if not status_ok then
  vim.notify('Pandoc not loading properly, Markdown previewer may not work')
  return
end

pandoc.setup()

-- will add configs if needed

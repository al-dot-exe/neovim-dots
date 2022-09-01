local a = 0;
local status_ok, dim = pcall(require, 'dim')
if not status_ok then
  vim.notify('Dim plugin is not working')
  return
end

dim.setup({
  disable_lsp_decorations = true;
})

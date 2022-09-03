local status_ok, lspconfig = pcall(require, "lspconfig")
local configs = require('lspconfig/configs')

if not status_ok then
  vim.notify("Language Servers Config not working!")
 return
end

require("general.lsp.lsp-installer")
require("general.lsp.handlers").setup()
require("general.lsp.null-ls")

-- Extra stuff for emmet ls
-- Just found out ITS A LANGUAGE SERVER!!!
-- let's see if it works if not back here
-- not working at the moment
-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities.textDocument.completion.completionItem.snippetSupport = true

-- lspconfig.emmet_ls.setup({
--   -- on_attach = on_attach,
--   capabilities = capabilities,
--   filetypes = { 'hbs', 'html', 'typescriptreact', 'javascriptreact', 'css', 'sass', 'scss', 'less' },
--   init_options = {
--     html = {
--       options = {
--         -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
--         ["bem.enabled"] = true,
--       },
--     },
--   }
-- })

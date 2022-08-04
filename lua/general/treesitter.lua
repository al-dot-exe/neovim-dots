local status_ok, configs = pcall(require, 'nvim-treesitter.configs')
if not status_ok then
  vim.notify('Treesitter is not working')
  return
end

configs.setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers)
  ignore_install = {"phpdoc"}, -- list of parsers to ignore on install
  highlight = {
    enable = true,   -- false will disable the whole extension
    additional_vim_regex_highlighting = true,
  },
  playground = {
    enable = true,
    disable = {},
    updatetime = 25,
    persist_queries = false
  },
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  },
  indent = { enable = true, disable = {"yaml"} },
}

-- require "nvim-treesitter.configs".setup {
--   playground = {
--     enable = true,
--     disable = {},
--     updatetime = 25,
--     persist_queries = false
--   }
-- }

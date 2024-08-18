local status_ok, conform = pcall(require, "conform")
if not status_ok then
	vim.notify("Conform formatter not working!")
	return
end

-- Format files files on save
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		conform.format({ bufnr = args.buf })
	end,
})

local slow_format_filetypes = {}
conform.setup({
	-- Detect slow formatters
	format_on_save = function(bufnr)
		if slow_format_filetypes[vim.bo[bufnr].filetype] then
			return
		end
		local function on_format(err)
			if err and err:match("timeout$") then
				slow_format_filetypes[vim.bo[bufnr].filetype] = true
			end
		end

		return { timeout_ms = 2000, lsp_format = "fallback" }, on_format
	end,

	-- format slow formatters after save instead
	format_after_save = function(bufnr)
		if not slow_format_filetypes[vim.bo[bufnr].filetype] then
			return
		end
		return { lsp_format = "fallback" }
	end,

	formatters_by_ft = {
		lua = { "stylua" },
		python = { "black" },
		html = { "prettier", "prettierd", stop_after_first = true },
		css = { "prettier", "prettierd", stop_after_first = true },
		javascript = { "prettier", "prettierd", stop_after_first = true },
		typescript = { "prettier", "prettierd", stop_after_first = true },
		json = { "prettier", "prettierd", stop_after_first = true },
		yaml = { "yamlfmt", "prettier", "prettierd", stop_after_first = true },
		markdown = { "markdownlint" },
	},
	formatters = {
		black = {
			prepend_args = { "--line-length", "78" },
		},
	},
})

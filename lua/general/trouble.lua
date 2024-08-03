-- DIAGNOSTICS TOOL
local status_ok, trouble = pcall(require, "trouble")

if not status_ok then
	vim.notify("Trouble diagnostics not loading properly")
	return
end

-- set up trouble with a floating window not working have to explore more later
trouble.setup(
  {
    defaults = {
    modes = {
      preview_float = {
        mode = "diagnostics",
        preview = {
          type = "float",
          relative = "editor",
          border = "rounded",
          title = "Preview",
          title_pos = "center",
          position = { 0, -2 },
          size = { width = 0.2, height = 0.2 },
          zindex = 200,
        },
      },
    },
      mode=preview_float
    }
})

print("hello")

local tdkFormattingGroup = vim.api.nvim_create_augroup(
	"General settings",
	{ clear = true }
)

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = { "*.lua" },
	callback = function() require("stylua").format() end,
	group = tdkFormattingGroup,
})

local lspconfig = require("lspconfig")
lspconfig.rust_analyzer.setup({
	cmd = {
		"rust-analyzer",
	},
})


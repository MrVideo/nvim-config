return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	build = ":Copilot auth",
	event = "InsertEnter",
	opts = {
		panel = {
			enabled = true
		},
		suggestion = {
			auto_trigger = true,
			keymap = {
				accept = "<M-q>"
			}
		},
		filetypes = {
			help = false
		},
	}
}

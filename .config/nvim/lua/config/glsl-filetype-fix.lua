local glsl_fix = vim.api.nvim_create_augroup('GLSLFiletypeFix', { clear = true })

vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
	group = glsl_fix,
	pattern = '*.frag',
	command = 'setfiletype glsl',
})

vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
	group = glsl_fix,
	pattern = '*.vert',
	command = 'setfiletype glsl',
})

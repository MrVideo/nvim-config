-- Converts callouts into normal quotes
function FixCallouts()
	vim.cmd("%s/\\v\\[!(.)([^]]+)\\]/**\\u\\1\\2**\\r>\\r>/g")
end

vim.api.nvim_create_user_command('FixCallouts', function() FixCallouts() end, {})

-- Fixes images link
function FixImageLinks()
	vim.cmd([[%s/\(Images\)/..\/\1/g]])
end

vim.api.nvim_create_user_command('FixImageLinks', function() FixImageLinks() end, {})

-- Fixes equation blocks
function FixEquationBlocks()
	vim.cmd("s/_/\\_/g")
	vim.cmd("s/\\\\/\\\\\\_/g")
end

vim.api.nvim_create_user_command('FixEquationBlocks', function() FixEquationBlocks() end, {})

-- Subject-specific fixes
-- IES22
function FixIES()
	vim.cmd("%s/..\\/..\\/..\\/Anno%202\\/Semestre%202\\/Informazione%20e%20Stima/..\\/..\\/ies22/g")
end

vim.api.nvim_create_user_command('FixIES', function() FixIES() end, {})

-- AM221
function FixAM2()
	vim.cmd("%s/..\\/..\\/..\\/Anno%202\\/Semestre%201\\/Analisi%20II/..\\/..\\/am221/g")
end

vim.api.nvim_create_user_command('FixAM2', function() FixAM2() end, {})

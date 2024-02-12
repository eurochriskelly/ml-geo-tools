-- Sample mappings for neovim
--

function RunGeojsonConvert()
	-- Capture the current line
	local line = vim.fn.getline(".")
	-- Escape quotes in the line
	line = line:gsub('"', '\\"')
	-- Construct the command with the escaped line
	local cmd = 'bash /Users/chkelly/Workspace/repos/ml-geo-tools/scripts/geojson2dxf "' .. line .. '"'
	-- Execute the command
	vim.fn.system(cmd)
	print(vim.fn.system(cmd))
	-- vim.api.nvim_out_write("Command executed.\n") -- Just a confirmation message
end

function RunWktConvert()
	-- Capture the current line
	local line = vim.fn.getline(".")
	-- Escape quotes in the line
	line = line:gsub('"', '\\"')
	-- Construct the command with the escaped line
	local cmd = 'bash /Users/chkelly/Workspace/repos/ml-geo-tools/scripts/wkt2dxf "' .. line .. '"'
	-- Execute the command
	vim.fn.system(cmd)
	print(vim.fn.system(cmd))
	-- vim.api.nvim_out_write("Command executed.\n") -- Just a confirmation message
end

local M = {}
M.general = {
	n = {
		["<leader>mgg"] = { ":lua RunGeojsonConvert()<CR>", "convert geojson to DXF" },
		["<leader>mgw"] = { ":lua RunWktConvert()<CR>", "convert wkt to DXF" },
	},
}

return M

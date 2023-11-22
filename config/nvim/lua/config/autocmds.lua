local autocmd = vim.api.nvim_create_autocmd -- Create autocommand

-- delete trailing white spaces except for markdown
function DeleteTrailingWS()
	if vim.bo.filetype == "markdown" then
		return
	end
	vim.api.nvim_command([[normal mz]])
	vim.cmd([[%s/\s\+$//ge]])
	vim.api.nvim_command([[normal 'z]])
end
autocmd("BufWritePre", { callback = DeleteTrailingWS })

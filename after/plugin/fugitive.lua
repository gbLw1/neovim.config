vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "[G]it [S]tatus" })

local ThePrimeagen_Fugitive = vim.api.nvim_create_augroup("ThePrimeagen_Fugitive", {})

local autocmd = vim.api.nvim_create_autocmd
autocmd("BufWinEnter", {
	group = ThePrimeagen_Fugitive,
	pattern = "*",
	callback = function()
		if vim.bo.ft ~= "fugitive" then
			return
		end

		local bufnr = vim.api.nvim_get_current_buf()
		local opts = { buffer = bufnr, remap = false }
		-- TODO: add desc to opts at each keymap
		opts.desc = "[G]it [p]ush"
		vim.keymap.set("n", "<leader>gp", function()
			vim.cmd.Git("push")
		end, opts)

		opts.desc = "[G]it [P]ull"
		vim.keymap.set("n", "<leader>gP", function()
			vim.cmd.Git("pull", "--rebase")
		end, opts)

		-- NOTE: It allows me to easily set the branch i am pushing and any tracking
		-- needed if i did not set the branch up correctly
		opts.desc = "Push [T]o [branch]"
		vim.keymap.set("n", "<leader>gt", ":Git push -u origin ", opts)
	end,
})

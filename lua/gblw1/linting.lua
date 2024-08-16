return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local lint = require("lint")

		-- linters by file type
		lint.linters_by_ft = {
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
			typescriptreact = { "eslint_d" },
			javascriptreact = { "eslint_d" },
			go = { "golangcilint" },
            python = { "flake8" },
		}

		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear })

		-- # apply this auto command on:
		-- BufEnter: openning a buffer or moving a cursor into it
		-- BufWritePost: after writing into a file
		-- InsertLeaver: after exiting insert mode
		-- NOTE -> some events like TextChange and InsertLeave wont work 'cause some linters require file to be save before executing (stdin = false)
		-- e.g: https://github.com/mfussenegger/nvim-lint/blob/master/lua/lint/linters/eslint_d.lua
		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			-- pattern = { "*.ts", "*.js" },
			group = lint_augroup,
			callback = function()
				lint.try_lint()
			end,
		})

		vim.keymap.set("n", "<leader>l", function()
			lint.try_lint()
		end, { desc = "Run [L]inter" })
	end,
}

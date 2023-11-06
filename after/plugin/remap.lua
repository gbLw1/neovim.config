vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex, { desc = "[E]xplorer" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>h", "<C-w>s", { desc = "Split window Hori[Z]ontal" })
vim.keymap.set("n", "<leader>v", "<c-w>v", { desc = "split window [v]ertical" })

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to Left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to Bottom window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to Top window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to Right window" })

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-f>", "<C-f>zz")
vim.keymap.set("n", "<C-b>", "<C-b>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- allow pasting without losing the current paste register
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "[Y]ank to system clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "[Y]ank line to system clipboard" })

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- apply changes in visual block selection
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<leader>t", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "Q", "<nop>")

-- replace remap with autoformatting file
-- vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = '[F]ormat current buffer with LSP' })

vim.keymap.set(
	"n",
	"<leader>rs",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ desc = "[R]eplace [S]tring" }
)

-- vim.keymap.set("i", "<C-Space>", "<C-x><C-o>", {
-- 	noremap = true,
-- 	silent = true,
-- 	desc = "Omni completion",
-- })

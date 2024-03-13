vim.g.mapleader = " "

-- Move block in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z") -- J without cursor move
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- page scroll w/ cursor in the middle
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv") -- keep search terms in the middle
vim.keymap.set("n", "N", "Nzzzv")

-- paste without copying the overwritten term(highlighted term, void reg.)
vim.keymap.set("x", "<leader>p", "\"_dP")

-- + register == system clipboard -> copy to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- del to void register like above
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- Q is a bad place
vim.keymap.set("n", "Q", "<nop>")

-- TODO: install tmux
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- Format file
vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format() end)

-- quickfix list nav.
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- replace the word the cursor's on
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

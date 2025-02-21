-- vim.opt.nobackup = true
-- vim.opt.nowritebackup = true
vim.opt.clipboard = unnamedplus

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", "<cmd>Ex<CR>")

vim.keymap.set("n", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("n", "K", ":m '<-1<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>p", [["_dP]])

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["Y]])

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>ws", "<cmd>split<CR>")
vim.keymap.set("n", "<leader>wv", "<cmd>vsplit<CR>")

vim.keymap.set("n", "<M-j>", "<cmd>resize -2<CR>")
vim.keymap.set("n", "<M-k>", "<cmd>resize +2<CR>")
vim.keymap.set("n", "<M-h>", "<cmd>vertical resize -2<CR>")
vim.keymap.set("n", "<M-l>", "<cmd>vertical resize +2<CR>")

vim.keymap.set("n", "<leader><leader>", "<C-^>")

vim.keymap.set("n", "<leader>bs", "<cmd>w<CR>")
vim.keymap.set("n", "<leader>qq", "<cmd>q<CR>")

-- vim.g.user_emmet_leader_key="<C-Z>"

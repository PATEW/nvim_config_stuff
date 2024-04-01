-- File explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move highlighted
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Cool paste without losing buffer
vim.keymap.set("x", "<leader>p", "\"_dP")


vim.keymap.set("n", "<leader>nn", ":Noice dismiss<CR>")

vim.keymap.set("n", "<left>", ":tabp<CR>")
vim.keymap.set("n", "<right>", ":tabn<CR>")
vim.keymap.set("n", "<up>", "<nop>")
vim.keymap.set("n", "<down>", "<nop>")
-- Optional yank into clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Destroy capital Q's grip on this mortal coil
vim.keymap.set("n", "Q", "<nop>")

-- Easy replace on current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

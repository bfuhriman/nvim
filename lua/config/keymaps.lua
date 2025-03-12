-- Open the netrw file explorer
vim.keymap.set("n", "<leader>e", ":Explore<CR>")

-- Toggle between normal and insert
vim.keymap.set("i", "<Esc>", "<Esc>")
vim.keymap.set("n", "<Esc>", "i")

-- Set indentation from anywhere in the line
vim.keymap.set("n", "<Tab>", "==")

-- Go to end of current line
vim.keymap.set("n", "E", "$")

-- Move the cursor in insert mode
vim.keymap.set("i", "<A-h>", "<Left>")
vim.keymap.set("i", "<A-j>", "<Down>")
vim.keymap.set("i", "<A-k>", "<Up>")
vim.keymap.set("i", "<A-l>", "<Right>")

-- Move highlighted lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Cursor behavior
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Delete text to void register
vim.keymap.set({"n", "v"}, "<leader>d", "\"_d")

-- Interact with system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set({"n", "v"}, "<leader>p", [["+P]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Replace all instances of a word in the current file 
vim.keymap.set("n", "<leader>l", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make the current bash file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>")

-- Write and source current file
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("w | so")
end)

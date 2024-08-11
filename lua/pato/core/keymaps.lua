-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- comment
keymap.set({ "n", "v" }, "<leader>#", ":CommentToggle<CR>")

-- pyright ignore line
keymap.set("n", "<leader>ig", "A # pyright: ignore<Esc>")

-- Paste in visual mode without yanking replaced text
vim.keymap.set("x", "p", [["_dP]])
-- yank to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
-- yank line to clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]])
-- delete without yanking
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- move a blocks of text up/down with K/J in visual mode
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true })

-- buffers
vim.keymap.set("n", "<leader>n", ":bn<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>p", ":bp<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>x", ":bd<CR>", { desc = "Close buffer" })
vim.keymap.set("n", "<leader>m", ":b#<CR>", { desc = "Last buffer" })

-- move lines up and down
vim.keymap.set("n", "<C-j>", ":m .+1<CR>==", { desc = "move line up" })
vim.keymap.set("n", "<C-k>", ":m .-2<CR>==", { desc = "move line down" })
vim.keymap.set("i", "<C-j>", "<Esc>:m .+1<CR>==gi", { desc = "move line up" })
vim.keymap.set("i", "<C-k>", "<Esc>:m .-2<CR>==gi", { desc = "move line down" })
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv", { desc = "move line up" })
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv", { desc = "move line down" })

keymap.set({ "n", "v" }, "<leader>#", ":CommentToggle<CR>", { desc = "Toggle comment" })

-- to rename variables and all references in current code
vim.keymap.set("n", "<leader>rn", ":IncRename ", { desc = "Rename variables" })

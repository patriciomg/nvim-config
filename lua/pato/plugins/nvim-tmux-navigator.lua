return {
    "christoomey/vim-tmux-navigator",
    vim.keymap.set("n", "<C-h>", ":TmuxNavigateLeft<CR>"),
    vim.keymap.set("n", "<C-j>", ":TmuxNavigateDown<CR>"),
    vim.keymap.set("n", "<C-k>", ":TmuxNavigateUp<CR>"),
    vim.keymap.set("n", "<C-l>", ":TmuxNavigateRight<CR>"),

    vim.keymap.set("n", "<M-Left>", ":TmuxNavigateLeft<CR>"),
    vim.keymap.set("n", "<M-Down>", ":TmuxNavigateDown<CR>"),
    vim.keymap.set("n", "<M-Up>", ":TmuxNavigateUp<CR>"),
    vim.keymap.set("n", "<M-Right>", ":TmuxNavigateRight<CR>")
}
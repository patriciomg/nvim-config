URL: https://www.reddit.com/r/neovim/comments/12z4iu5/setting_up_nvimtree_bufferline_issue/?rdt=44836

```
-- options recommended by nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- recommended by bufferline and nvim-tree (and pretty much anyone not using just the 16 terminal colors)
vim.o.termguicolors = true
```

```
-- install/setup plugins
require("lazy").setup({
  { 'akinsho/bufferline.nvim', config = true },
  -- config = true is shorthand for config = function() require('bufferline').setup() end
  { 'nvim-tree/nvim-tree.lua', config = true }
})
```

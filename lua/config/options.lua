-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.updatetime = 1000 -- write swap file and trigger CursorHold after 1s of inactivity

-- Padding / breathing room
vim.opt.scrolloff = 10     -- keep 10 lines above/below the cursor
vim.opt.sidescrolloff = 10 -- keep 10 columns left/right of the cursor
vim.opt.foldcolumn = "1"   -- 1-char left gutter for visual left padding

-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

-- General
opt.compatible = false -- Disable compatibility with Vi
opt.hidden = true -- Allow unsaved buffers
opt.mouse = "a" -- Enable mouse support
opt.clipboard = "unnamedplus" -- Use system clipboard
opt.swapfile = false -- Disable swap files
opt.backup = false -- Disable backup files
opt.undofile = true -- Enable persistent undo

-- Search
opt.ignorecase = true -- Ignore case in search patterns
opt.smartcase = true -- Override ignorecase if search contains uppercase
opt.incsearch = true -- Show matches as you type
opt.hlsearch = true -- Highlight search results

-- Display
opt.number = true -- Show line numbers
opt.relativenumber = true -- Show relative line numbers
opt.cursorline = true -- Highlight the current line
opt.termguicolors = true -- Enable 24-bit RGB colors
opt.signcolumn = "yes" -- Always show the sign column
opt.scrolloff = 8 -- Keep 8 lines above and below the cursor
opt.sidescrolloff = 8 -- Keep 8 columns to the left and right of the cursor
opt.wrap = false -- Disable line wrapping
opt.colorcolumn = "100" -- Highlight column 100

-- Indentation
opt.expandtab = true -- Use spaces instead of tabs
opt.shiftwidth = 4 -- Number of spaces for each indentation level
opt.tabstop = 4 -- Number of spaces a tab counts for
opt.softtabstop = 4 -- Number of spaces a tab counts for when editing
opt.smartindent = true -- Enable smart indentation
opt.autoindent = true -- Enable automatic indentation

-- Performance
opt.updatetime = 250 -- Faster completion
opt.timeoutlen = 400 -- Timeout for mapped sequences

-- UI Behavior
opt.splitbelow = true -- Open new horizontal splits below the current window
opt.splitright = true -- Open new vertical splits to the right of the current window

-- Files
opt.encoding = "utf-8" -- File encoding
opt.fileencoding = "utf-8" -- File encoding for the current buffer

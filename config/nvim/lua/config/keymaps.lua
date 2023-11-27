local defaultOpts = { noremap = true, silent = true }

-- local keymap = vim.keymap
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", defaultOpts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Ctrl + hjkl でウィンドウ間を移動
keymap("", "<C-h>", "<C-w>h", defaultOpts)
keymap("", "<C-j>", "<C-w>j", defaultOpts)
keymap("", "<C-k>", "<C-w>k", defaultOpts)
keymap("", "<C-l>", "<C-w>l", defaultOpts)

-- Shift + 矢印でウィンドウサイズを変更
keymap("", "<S-Left>", "<C-w><", defaultOpts)
keymap("", "<S-Right>", "<C-w>>", defaultOpts)
keymap("", "<S-Up>", "<C-w>-", defaultOpts)
keymap("", "<S-Down>", "<C-w>+", defaultOpts)

-- buffer
keymap("", "<leader>b", ":b #<Enter>", defaultOpts)

-- 画面分割
keymap("", "<leader>s", ":vsplit<Enter>", defaultOpts)

-- tab
keymap("", "<tab>l", "<cmd>bnext<cr>", defaultOpts)
keymap("", "<tab>h", "<cmd>bprevious<cr>", defaultOpts)
keymap("", "<tab>t", ":<c-u>tabnew<cr>", defaultOpts)
keymap("", "<tab>0", ":<c-u>tabfirst<cr>", defaultOpts)
keymap("", "<tab>4", ":<c-u>tablast<cr>", defaultOpts)
keymap("", "<tab>$", ":<c-u>tablast<cr>", defaultOpts)
keymap("", "<tab>c", ":<c-u>tabclose<cr>", defaultOpts)

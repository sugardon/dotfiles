local opt = vim.opt

-- <leader>
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.maplocalleader = " " -- Same for `maplocalleader`
vim.g.autoformat = false

opt.autoread = true
opt.backup = false -- creates a backup file
-- opt.clipboard = "unnamedplus" -- don't use clipboard
opt.cmdheight = 2 -- more space in the neovim command line for displaying messages
opt.completeopt = { "menuone", "noselect" }
opt.conceallevel = 0 -- so that `` is visible in markdown files
opt.confirm = true
opt.cursorline = false -- highlight the current line
opt.encoding = "utf-8"
opt.expandtab = true -- convert tabs to spaces
opt.fileencoding = "utf-8" -- the encoding written to a file
opt.hidden = true -- required to keep multiple buffers and open multiple buffers
opt.hlsearch = true -- highlight all matches on previous search pattern
opt.ignorecase = false -- ignore case in search patterns
opt.laststatus = 2 -- hide statusline
-- opt.listchars = "tab:≫-,trail:.,nbsp:%"
opt.list = true
opt.number = true -- set numbered lines
opt.pumheight = 10 -- pop up menu height
opt.relativenumber = false -- set relative numbered lines
opt.shiftwidth = 2 -- the number of spaces inserted for each indentation
opt.showtabline = 2 -- always show tabs
opt.sidescrolloff = 4
opt.smartcase = true -- smart case
opt.smartindent = true -- make indenting smarter again
opt.spell = true -- disable spell checking
opt.spelllang = "en,cjk" -- language for spell checking
opt.splitbelow = true -- force all horizontal splits to go below current window
opt.splitright = true -- force all vertical splits to go to the right of current window
opt.swapfile = false -- creates a swapfile
opt.tabstop = 2 -- insert 2 spaces for a tab
opt.timeoutlen = 500 -- timeout length
opt.titlestring = "%<%F - nvim" -- what the title of the window will be set to
opt.title = true -- set the title of window to the value of the titlestring
opt.updatetime = 300 -- faster completion
opt.wrap = true -- display lines as one long line
opt.wrapscan = true

-- shell
opt.shell = "zsh"

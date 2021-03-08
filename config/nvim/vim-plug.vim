" # vim-plug
" https://github.com/junegunn/vim-plug
"
" ## automatic install
" https://github.com/junegunn/vim-plug/issues/739
let autoload_plug_path = stdpath('config') . '/autoload/plug.vim'
if !filereadable(autoload_plug_path)
  silent execute '!curl -fLo ' . autoload_plug_path . '  --create-dirs 
      \ "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
unlet autoload_plug_path

" ## Specify a directory for plugins
call plug#begin('~/.config/nvim/plugged')

" ### coc
" https://github.com/neoclide/coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" ### gruvbox | cholor theme
" https://github.com/morhetz/gruvbox
Plug 'morhetz/gruvbox'

" ### devicons
" https://github.com/ryanoasis/vim-devicons
Plug 'ryanoasis/vim-devicons'

" ### lightline
" https://github.com/itchyny/lightline.vim
Plug 'itchyny/lightline.vim'

" ### Indent Guides
" https://github.com/nathanaelkane/vim-indent-guides
Plug 'nathanaelkane/vim-indent-guides'

" ### Nerdtree
" https://github.com/preservim/nerdtree
Plug 'preservim/nerdtree'

" ### Nerdtree git
" https://github.com/Xuyuanp/nerdtree-git-plugin
Plug 'Xuyuanp/nerdtree-git-plugin'

" ### Nerdtree syntax highlight
" https://github.com/tiagofumo/vim-nerdtree-syntax-highlight
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" ### lexima | 括弧補完
" https://github.com/cohama/lexima.vim
Plug 'cohama/lexima.vim'

" ### vim table mode
" https://github.com/dhruvasagar/vim-table-mode
Plug 'dhruvasagar/vim-table-mode'

" ## Initialize plugin system
call plug#end()

colorscheme gruvbox 
syntax enable

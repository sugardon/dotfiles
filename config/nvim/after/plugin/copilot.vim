" copilot.vim
"
" https://github.com/github/copilot.vim/blob/release/doc/copilot.txt
inoremap <silent><script><expr> <Right> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true
inoremap <silent> <Left>(copilot-dismiss)
inoremap <silent> <Down> <Plug>(copilot-next)
inoremap <silent> <Up> <Plug>(copilot-previous)

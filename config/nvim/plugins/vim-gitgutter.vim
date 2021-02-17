" ### GitGutter ###
"let g:gitgutter_highlight_lines=1
"let g:gitgutter_highlight_linenrs=1
let g:gitgutter_async=0
"let g:gitgutter_override_sign_column_highlight=0
"let g:gitgutter_sign_allow_clobber=1
"highlight clear SignColumn
"highlight GitGutterAdd ctermfg=green guifg=darkgreen
"highlight GitGutterChange ctermfg=yellow guifg=darkyellow
"highlight GitGutterDelete ctermfg=red guifg=darkred
"highlight GitGutterChangeDelete ctermfg=yellow guifg=darkyellow
let g:gitgutter_sign_added = '▎'
let g:gitgutter_sign_modified = '▎'
let g:gitgutter_sign_removed = '▏'
let g:gitgutter_sign_removed_first_line = '▔'
let g:gitgutter_sign_modified_removed = '▋'
" ---------------------------------------------------------
highlight GitGutterAdd ctermfg=22 guifg=#006000 ctermbg=NONE guibg=NONE
highlight GitGutterChange ctermfg=58 guifg=#5F6000 ctermbg=NONE guibg=NONE
highlight GitGutterDelete ctermfg=52 guifg=#600000 ctermbg=NONE guibg=NONE
highlight GitGutterChangeDelete ctermfg=52 guifg=#600000 ctermbg=NONE guibg=NONE

" ### keymap ###
" Hunkの移動
nmap <Leader>hj <Plug>(GitGutterNextHunk)
nmap <Leader>hk <Plug>(GitGutterPrevHunk)
" Hunkのstage
nmap <Leader>hs <Plug>(GitGutterStageHunk)
" Hunkのundo(revert)
nmap <Leader>hu <Plug>(GitGutterUndoHunk)

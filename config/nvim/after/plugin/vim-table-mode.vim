" ### vim table mode ###
" key
" https://github.com/dhruvasagar/vim-table-mode#manipulating-table
nnoremap <Leader>tm :<C-u>:TableModeToggle<CR>
"nnoremap <Leader>tmR <Plug>(table-mode-delete-row)
nnoremap <Leader>tmc <Plug>(table_mode_insert_column_after_map)
nnoremap <Leader>tmC <Plug>(table_mode_insert_column_before_map)

" option
let g:table_mode_corner = '|'

" Ctrl + hjkl でウィンドウ間を移動
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Shift + 矢印でウィンドウサイズを変更
nnoremap <S-Left>  <C-w><
nnoremap <S-Right> <C-w>>
nnoremap <S-Up>    <C-w>-
nnoremap <S-Down>  <C-w>+

" 一つ前のファイルを開く
nnoremap <silent> <leader>b :b #<Enter>
" 画面分割
nnoremap <silent> <leader>s :vsplit<Enter>

" terminal mode
tnoremap <silent> <ESC> <C-\><C-n>

" tab
nnoremap <silent> <tab>t :<c-u>tabnew<cr>
nnoremap <silent> <tab>l :<c-u>tabnext<cr>
nnoremap <silent> <tab>h :<c-u>tabprevious<cr>
nnoremap <silent> <tab>0 :<c-u>tabfirst<cr>
nnoremap <silent> <tab>4 :<c-u>tablast<cr>
nnoremap <silent> <tab>$ :<c-u>tablast<cr>
nnoremap <silent> <tab>c :<c-u>tabclose<cr>

" mark
nnoremap <silent> <leader>m :<c-u>CocList marks<cr>

syntax on
colorscheme elflord

" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%91v.\+/

if exists('+colorcolumn')
  set colorcolumn=91
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif


" Syntastic stuff
execute pathogen#infect()

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

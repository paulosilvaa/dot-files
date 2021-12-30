" Options
syn on			" Enable colors
set background=dark	" Dark mode
set nu			" Number lines
set nocp		" No compatible
set noru		" No ruler
set is			" Search
set ic			" Search
set hls			" Searc
set magic		" Enables

" Abbreviations
cab W  w
cab Wq wq
cab wQ wq
cab WQ wq
cab Q  q

" Maps
map q :q! 
map <F5> :syn on<cr>
map <F6> :syn off<cr>
map <F7> :set number<cr>
map <F8> :set nonumber<cr>

" Viminfo file
set viminfo='10,\"30,:20,%,n~/.viminfo

" Status Line Custom
au InsertEnter * hi statusline guifg=black guibg=#d7afff ctermfg=red ctermbg=white
au InsertLeave * hi statusline guifg=black guibg=#8fbfdc ctermfg=blue ctermbg=white
hi statusline guifg=black guibg=#8fbfdc ctermfg=blue ctermbg=white

let g:currentmode={
    \ 'n'  : 'Normal',
    \ 'no' : 'Normal·Operator Pending',
    \ 'v'  : 'Visual',
    \ 'V'  : 'V·Line',
    \ '^V' : 'V·Block',
    \ "\<C-V>" : 'V·Block',
    \ 's'  : 'Select',
    \ 'S'  : 'S·Line',
    \ '^S' : 'S·Block',
    \ 'i'  : 'Insert',
    \ 'R'  : 'Replace',
    \ 'Rv' : 'V·Replace',
    \ 'c'  : 'Command',
    \ 'cv' : 'Vim Ex',
    \ 'ce' : 'Ex',
    \ 'r'  : 'Prompt',
    \ 'rm' : 'More',
    \ 'r?' : 'Confirm',
    \ '!'  : 'Shell',
    \ 't'  : 'Terminal'
    \}

set laststatus=2
set noshowmode						 " Don't show the actual mode
set statusline=
set statusline+=%0*\ %{toupper(g:currentmode[mode()])}\  " The current mode
set statusline+=%1*\ %<%F%m%r%h%w\                       " File path, modified, readonly, helpfile, preview
set statusline+=%3*│                                     " Separator
set statusline+=%2*\ %Y\                                 " FileType
set statusline+=%3*│                                     " Separator
set statusline+=%2*\ %{''.(&fenc!=''?&fenc:&enc).''}     " Encoding
set statusline+=\ (%{&ff})                               " FileFormat (dos/unix..)
set statusline+=%=                                       " Right Side
set statusline+=%2*\ col:\ %02v\                         " Colomn number
set statusline+=%3*│                                     " Separator
set statusline+=%1*\ ln:\ %02l/%L\ (%3p%%)\              " Line number / total lines, percentage of document
set statusline+=%0*\ %n\                                 " Buffer number

hi User1 ctermfg=007 ctermbg=239 guibg=#4e4e4e guifg=#adadad
hi User2 ctermfg=007 ctermbg=236 guibg=#303030 guifg=#adadad
hi User3 ctermfg=236 ctermbg=236 guibg=#303030 guifg=#303030

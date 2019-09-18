set nu
set hlsearch
set expandtab ts=4 sw=4 ai smarttab

autocmd FileType make setlocal noexpandtab 

source ~/.vim/plugins/cscope_maps.vim

execute pathogen#infect()
syntax on
filetype plugin indent on

nnoremap <C-l> :TlistToggle<CR>
nnoremap <C-n> :NERDTreeToggle<CR>

" Open NERDTree always on right
let g:NERDTreeWinPos = "right"

set viminfo='100,<1000,s100,h
" Meaning
" '100 - Marks will be remembered for the last 100 edited files.
" <1000 - Limits the number of lines saved for each register to 1000 lines
" s100 - Registers with more than 100 KB of text are skipped.
" h - Disables search highlighting when Vim starts.

" Keep a line mark for 100 characters
set cc=100

" Enable mouse
set mouse=a

" Highlight the current line and also <ctrl+h> to toggle it
color desert
set cursorline
hi CursorLine term=bold cterm=bold
nnoremap <C-h> :set cursorline!<CR>

" Vim-Airline and Vim-Airline-Themes configuration
"let g:airline#extensions#tabline#enabled=1
"let g:airline_powerline_fonts=1
let g:airline_theme='term'
let g:hybrid_custom_term_colors=1
let g:hybrid_reduced_contrast=1

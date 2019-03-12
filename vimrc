set nu
set hlsearch
set expandtab ts=4 sw=4 ai smarttab

autocmd FileType make setlocal noexpandtab 

source ~/.vim/plugins/cscope_maps.vim

execute pathogen#infect()
syntax on
filetype plugin indent on

map <C-l> :TlistToggle<CR>

map <C-n> :NERDTreeToggle<CR>

" Open NERDTree always on right
let g:NERDTreeWinPos = "right"

:set viminfo='100,<1000,s100,h
" Meaning
" '100 - Marks will be remembered for the last 100 edited files.
" <1000 - Limits the number of lines saved for each register to 1000 lines
" s100 - Registers with more than 100 KB of text are skipped.
" h - Disables search highlighting when Vim starts.


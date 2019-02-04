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
"Open NERDTree always on right
let g:NERDTreeWinPos = "right"

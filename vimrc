set nu
set hlsearch
"set expandtab ts=2 sw=2 ai smarttab
set expandtab ts=4 sw=4 ai smarttab
"set expandtab ts=8 sw=8 ai smarttab
"set ts=2 sw=2 ai smarttab
"set ts=4 sw=4 ai smarttab
"set ts=8 sw=8 ai smarttab

" For makefile dont expand tab to blancspaces.
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
set cc=80

" Enable mouse
set mouse=a

" Highlight the current line and also <ctrl+h> to toggle it
color desert
set cursorline
hi CursorLine term=bold cterm=bold
nnoremap <C-h> :set cursorline!<CR>
" Change search highlight color
hi Search guibg=yellow guifg=black
hi Search cterm=None ctermbg=yellow ctermfg=black

" Vim-Airline and Vim-Airline-Themes configuration
"let g:airline#extensions#tabline#enabled=1
"let g:airline_powerline_fonts=1
let g:airline_theme='term'
let g:hybrid_custom_term_colors=1
let g:hybrid_reduced_contrast=1

" Shortcut for ectags (ctags and cscope update) execution
nnoremap <C-k> :!ectags<CR><CR>

set rtp+=~/.fzf

" To display tabs as character (>----)
set list
set listchars=tab:>-

" Highlight unwanted spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Smartly detect ctags in parent directories
set tags=tags;

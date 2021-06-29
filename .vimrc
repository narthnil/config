" enable syntax highlighting
syntax enable

" show line numbers
set number

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" how many columns vim uses when you hit Tab in insert mode
set softtabstop=4

" enable all Python syntax highlighting features
let python_highlight_all = 1

" display trailing spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Show ruler at 80 columnwidth
hi ColorColumn ctermbg=0 guibg=#e2b72d
set ruler " show the cursor position all the time
set colorcolumn=80

" Resize windows with =, -, _, +
map = <c-w>+
map - <c-w>-
map _ <c-w><
map + <c-w>>

" UTF-8 encoding
set encoding=utf-8

set rtp+=~/tabnine-vim

" To highlight all search matches
set hlsearch

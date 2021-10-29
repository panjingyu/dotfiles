" Set number
set number relativenumber

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key Mapping
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set the leader key to <Space>
let mapleader = " "

" Fast saving
nmap <leader>w :w<cr>

" Map fd to <Esc>
inoremap fd <Esc>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
"set smarttab

" Set <tab> and <backspace> action in insert mode
" number of columns of whitespace a tab keypress or a backspace keypress is worth.
set softtabstop=4
" number of columns of whitespace a \t is worth
"set tabstop=4  " Use default = 8, Using a 'tabstop' value other than the default (8 spaces), will result in your file having a different appearance when using tools such as cat (type on Windows), which can't use a custom width tab character. On the other hand, using hard tabs for indentation, allows others to view your code with the amount of indentation they prefer.

"set shiftwidth=4

set autoindent  " does nothing more than copy the indentation from the previous line, when starting a new line.

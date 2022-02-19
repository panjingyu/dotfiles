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

nmap <Leader>p :setlocal paste!<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Search
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" When 'ignorecase' and 'smartcase' are both on, if a pattern contains an
" uppercase letter, it is case sensitive, otherwise, it is not.
set ignorecase
set smartcase
" Incrementally search while typing
set incsearch
" Highlight searches
set hlsearch

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set number
set number
set relativenumber

" Set to auto read when a file is changed from the outside
set autoread

" Controls the minimal number of visible leading and trailing lines
" surrounding the cursor.
set scrolloff=7

" Backspace should also perform on 'eol', 'start', 'indent'
set backspace=eol,start,indent

" Configure folding by syntax
set foldmethod=syntax
" no folds when a buffer is opened
set foldlevelstart=99

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Keep cursor column during 'jk' line motion
let g:EasyMotion_startofline = 0

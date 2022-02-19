""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Key Mapping
"""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set the leader key to <Space>
let mapleader = " "

" Fast saving
nmap <leader>w :w<cr>

" Map fd to <Esc>
" inoremap fd <Esc> " Abandoned: mapped pressed-alone <C> to <Esc>

" emacs-style cursor movement in insert/command-line mode
noremap! <C-f> <Right>
noremap! <C-b> <Left>
noremap! <C-a> <Home>
noremap! <C-e> <End>
noremap! <C-h> <Backspace>
noremap! <C-d> <Delete>

" Command line history
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" Adjusting indentation should not break visual mode
xnoremap < <gv
xnoremap > >gv

" Quick switch among tabs
map <tab> gt
map <S-tab> gT

" Quick switch among windows
noremap <C-j> <C-w><C-j>
noremap <C-k> <C-w><C-k>
noremap <C-h> <C-w><C-h>
noremap <C-l> <C-w><C-l>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Easymotion configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Common line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>h <Plug>(easymotion-linebackward)
map <Leader>f <Plug>(easymotion-f)
map <Leader>F <Plug>(easymotion-F)
map <Leader>t <Plug>(easymotion-t)
map <Leader>T <Plug>(easymotion-T)

" Pinpoint character(s) over windows
map s <Plug>(easymotion-s)


""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Search
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable highlight when <leader><cr> is pressed
map <silent> <Esc><Esc> :nohlsearch<cr>

" incsearch.vim configuration
map /  <Plug>(incsearch-easymotion-/)
map ?  <Plug>(incsearch-easymotin-?)
map g/ <Plug>(incsearch-easymotion-stay)

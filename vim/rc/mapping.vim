""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Key Mapping
"""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set the leader key to <Space>
let mapleader = " "

" Fast saving
nmap <leader>w :w<cr>
nmap <leader>W :wa<cr>

" In VSCode, disable <cr> movement to correct behavior of incsearch-easymotion
noremap <cr> <Nop>

" Map fd to <Esc>
" inoremap fd <Esc> " Abandoned: mapped pressed-alone <C> to <Esc>

nmap <Leader>p :setlocal paste!<cr>

" emacs-style cursor movement in insert/command-line mode (with map!)
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
" Disable highlight when <leader><esc> is pressed
map <silent> <Leader><Esc> :nohlsearch<cr>

" incsearch.vim configuration
map /  <Plug>(incsearch-easymotion-/)
map ?  <Plug>(incsearch-easymotin-?)
map g/ <Plug>(incsearch-easymotion-stay)

function! s:config_easyfuzzymotion(...) abort
    return extend(copy({
    \   'converters': [incsearch#config#fuzzy#converter()],
    \   'modules': [incsearch#config#easymotion#module()],
    \   'keymap': {"\<CR>": '<Over>(easymotion)'},
    \   'is_expr': 0,
    \   'is_stay': 1
    \ }), get(a:, 1, {}))
endfunction

noremap <silent><expr> z/ incsearch#go(<SID>config_easyfuzzymotion())

if exists('g:vscode')
    xmap gc  <Plug>VSCodeCommentary
    nmap gc  <Plug>VSCodeCommentary
    omap gc  <Plug>VSCodeCommentary
    nmap gcc <Plug>VSCodeCommentaryLine
endif

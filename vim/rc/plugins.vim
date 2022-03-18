""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-plug configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! Cond(cond, ...)
    let opts = get(a:000, 0, {})
    return a:cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'ntpeters/vim-better-whitespace'   " Handle trailing white space
Plug 'easymotion/vim-easymotion', Cond(!exists('g:vscode'))
Plug 'asvetliakov/vim-easymotion', Cond(exists('g:vscode'), { 'as': 'vsc-easymotion' })
Plug 'junegunn/vim-peekaboo'            " View regs in a natural way
Plug 'preservim/nerdtree'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'psliwka/vim-smoothie'
Plug 'tpope/vim-commentary'
Plug 'vim-syntastic/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

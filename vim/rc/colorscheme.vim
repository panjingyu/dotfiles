""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Color scheme configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on

" Enable tabline
let g:airline#extensions#tabline#enabled = 1

" onedark.vim override: Don't set a background color when running in a terminal;
" just use the terminal's background color
" `gui` is the hex color code used in GUI mode/nvim true-color mode
" `cterm` is the color code used in 256-color mode
" `cterm16` is the color code used in 16-color mode
if (has("autocmd") && !has("gui_running"))
    augroup colorset
        autocmd!
        let s:white = { "gui": "#ABB2BF", "cterm": "254", "cterm16" : "15" }
        let s:comment_grey = { "gui": "#5C6370", "cterm": "7", "cterm16": "7" }
        " `bg` will not be styled since there is no `bg` setting
        autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white })
        autocmd ColorScheme * call onedark#set_highlight("Comment", { "fg": s:comment_grey })
    augroup END
endif

colorscheme onedark

" Load rc files
let g:vimrc = expand('<sfile>')
let g:vimrc_root = fnamemodify(g:vimrc, ':h')
let s:rc_base_dir = g:vimrc_root . '/rc/'

execute 'set runtimepath^=' . fnameescape(s:rc_base_dir)

" @param {string} path 'relative to s:rc_base_dir(~/.vim/rc/)'
function! s:source_rc(path) abort
    execute 'source' fnameescape(s:rc_base_dir . a:path)
endfunction

call s:source_rc('autocmd.vim')
call s:source_rc('plugins.vim')
call s:source_rc('options.vim')
call s:source_rc('mapping.vim')
call s:source_rc('colorscheme.vim')

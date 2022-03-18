" Automatically install missing plugins on startup
autocmd VimEnter *
    \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
    \|     PlugInstall --sync | source $MYVIMRC
    \| endif

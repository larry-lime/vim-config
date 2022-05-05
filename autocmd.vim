" -------------------------------------------------------------------------------
"░█████╗░██╗░░░██╗████████╗░█████╗░░█████╗░███╗░░░███╗██████╗░
"██╔══██╗██║░░░██║╚══██╔══╝██╔══██╗██╔══██╗████╗░████║██╔══██╗
"███████║██║░░░██║░░░██║░░░██║░░██║██║░░╚═╝██╔████╔██║██║░░██║
"██╔══██║██║░░░██║░░░██║░░░██║░░██║██║░░██╗██║╚██╔╝██║██║░░██║
"██║░░██║╚██████╔╝░░░██║░░░╚█████╔╝╚█████╔╝██║░╚═╝░██║██████╔╝
"╚═╝░░╚═╝░╚═════╝░░░░╚═╝░░░░╚════╝░░╚════╝░╚═╝░░░░░╚═╝╚═════╝░

" -------------------------------------------------------------------------------
" VIM
" -------------------------------------------------------------------------------
augroup vim_open
    autocmd!
    autocmd Filetype vim nnoremap <leader>s :so %<CR>
    autocmd Filetype python set nowrap
    autocmd Filetype vim set nu
    autocmd Filetype vim set rnu
    autocmd Filetype vim set signcolumn=yes
augroup END

" -------------------------------------------------------------------------------
" Calendar
" -------------------------------------------------------------------------------
"augroup cal_open
    "autocmd!
    "autocmd BufEnter *calendar.vim :Calendar<CR>
    ""autocmd <silent> :call ToggleHiddenAll()<CR>
"augroup END

"augroup clock_open
    "autocmd!
    "autocmd BufEnter *clock.vim :Calendar -view=clock<CR>
    ""autocmd <silent> :call ToggleHiddenAll()<CR>
"augroup END
" -------------------------------------------------------------------------------
" TERMINAL
" -------------------------------------------------------------------------------
augroup term_open
    autocmd!
    autocmd termopen * set nonu
    autocmd termopen * set nornu
    autocmd termopen * set signcolumn=yes
augroup END

" -------------------------------------------------------------------------------
" VIMWIKI
" -------------------------------------------------------------------------------

augroup filetype_vimwiki
    autocmd!
    "autocmd Filetype vimwiki set wrap
    "autocmd Filetype vimwiki set nonu
    "autocmd FileType vimwiki set nornu
    autocmd Filetype vimwiki let b:coc_suggest_disable = 1
    "autocmd FileType vimwiki nnoremap <leader><Tab> :VimwikiChangeSymbolTo -<CR>>>A
    "autocmd FileType vimwiki nnoremap <leader><S-Tab> :VimwikiChangeSymbolTo *<CR><<A
augroup END

" -------------------------------------------------------------------------------
" PYTHON
" -------------------------------------------------------------------------------

augroup filetype_python
    autocmd!
    autocmd Filetype python set nowrap
    autocmd Filetype python set nu
    autocmd FileType python set rnu
    autocmd FileType python let b:tagbar_foldlevel = 99
    autocmd FileType python let b:coc_pairs_disabled = ['<']
augroup END

" -------------------------------------------------------------------------------
" JSON
" -------------------------------------------------------------------------------
augroup filetype_json
  autocmd!
  autocmd FileType json let b:auto_save = 0
augroup END


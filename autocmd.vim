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
augroup END

" -------------------------------------------------------------------------------
" TERMINAL
" -------------------------------------------------------------------------------

"augroup term_open
    "autocmd!
    "autocmd termopen * set nonu
    "autocmd termopen * set nornu
    "autocmd termopen * set signcolumn=yes
"augroup END

" -------------------------------------------------------------------------------
" VIMWIKI
" -------------------------------------------------------------------------------

augroup filetype_vimwiki
    autocmd!
    autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
    autocmd Filetype vimwiki let g:copilot_enabled = v:true
    autocmd Filetype vimwiki let b:coc_suggest_disable = 1
    autocmd Filetype vimwiki imap <silent><script><expr> <C-n> copilot#Accept("\<CR>")
    autocmd Filetype vimwiki let b:copilot_no_tab_map = v:true
    autocmd FileType python nnoremap <silent> <leader>z :call FocusUpToggle()<CR>
augroup END

" -------------------------------------------------------------------------------
" PYTHON
" -------------------------------------------------------------------------------

augroup filetype_python
    autocmd!
    autocmd FileType python let b:tagbar_foldlevel = 99
    autocmd FileType python nnoremap <silent> <leader>z :call FocusUpPyToggle()<CR>
augroup END

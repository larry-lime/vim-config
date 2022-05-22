" -------------------------------------------------------------------------------
"░█████╗░██╗░░░██╗████████╗░█████╗░░█████╗░███╗░░░███╗██████╗░
"██╔══██╗██║░░░██║╚══██╔══╝██╔══██╗██╔══██╗████╗░████║██╔══██╗
"███████║██║░░░██║░░░██║░░░██║░░██║██║░░╚═╝██╔████╔██║██║░░██║
"██╔══██║██║░░░██║░░░██║░░░██║░░██║██║░░██╗██║╚██╔╝██║██║░░██║
"██║░░██║╚██████╔╝░░░██║░░░╚█████╔╝╚█████╔╝██║░╚═╝░██║██████╔╝
"╚═╝░░╚═╝░╚═════╝░░░░╚═╝░░░░╚════╝░░╚════╝░╚═╝░░░░░╚═╝╚═════╝░

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
    autocmd FileType python nnoremap <silent> <leader>z :call FocusUpToggleNum()<CR>
augroup END

" -------------------------------------------------------------------------------
" VIM
" -------------------------------------------------------------------------------
augroup filetype_vim
    autocmd!
    autocmd FileType vim nnoremap <silent> <leader>z :call FocusUpToggleNum()<CR>
augroup END

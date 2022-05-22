"-----------------------------------------------------------------
"██████╗░██╗░░░░░██╗░░░██╗░██████╗░██╗███╗░░██╗░██████╗
"██╔══██╗██║░░░░░██║░░░██║██╔════╝░██║████╗░██║██╔════╝
"██████╔╝██║░░░░░██║░░░██║██║░░██╗░██║██╔██╗██║╚█████╗░
"██╔═══╝░██║░░░░░██║░░░██║██║░░╚██╗██║██║╚████║░╚═══██╗
"██║░░░░░███████╗╚██████╔╝╚██████╔╝██║██║░╚███║██████╔╝
"╚═╝░░░░░╚══════╝░╚═════╝░░╚═════╝░╚═╝╚═╝░░╚══╝╚═════╝░
" -----------------------------------------------------------------

" -----------------------------------------------------------------
" Airline
" -----------------------------------------------------------------

"let g:airline#extensions#tabline#enabled = 0
"let g:airline_disable_statusline = 1
"let g:airline_powerline_fonts = 0
"let g:airline#extensions#tagbar#enabled = 0

" -----------------------------------------------------------------
" ANYFOLD
" -----------------------------------------------------------------

filetype plugin indent on
autocmd Filetype * AnyFoldActivate
set foldlevel=99

" -----------------------------------------------------------------
" AUTOSAVE
" -----------------------------------------------------------------

let g:auto_save = 1
let g:auto_save_silent = 0

" -----------------------------------------------------------------
" COC
" -----------------------------------------------------------------
let g:coc_config_home = '~/.config/nvim/'
" Enable tab and shift-tab for completion shifting
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
            \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Refreshes Coc suggestions
if has('nvim')
    inoremap <silent><expr> <C-z> coc#refresh()
else
    inoremap <silent><expr> <c-@> coc#refresh()
endif

" Jump to and from coc diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Coc Commands
nnoremap <silent> <leader>cf :CocFix<CR>
nnoremap <leader>fm :call CocAction('format')<CR>

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    elseif (coc#rpc#ready())
        call CocActionAsync('doHover')
    else
        execute '!' . &keywordprg . " " . expand('<cword>')
    endif
endfunction

" Symbol renaming.
nmap <leader>ra <Plug>(coc-rename)

""Formatting selected code.
:command Format :call CocAction('format')
:command Openpreview :CocCommand markdown-preview-enhanced.openPreview

" -----------------------------------------------------------------
" COC-FZF
" -----------------------------------------------------------------

let g:coc_fzf_preview = ''
let g:coc_fzf_opts = []

" -----------------------------------------------------------------
"  COPILOT
" -----------------------------------------------------------------

let g:copilot_enabled = v:false
nnoremap <silent><leader>ce :Copilot enable<CR>
nnoremap <silent><leader>cd :Copilot disable<CR>
nnoremap <silent><leader>cp :Copilot panel<CR>
nnoremap <silent><leader>cs :echo g:copilot#Enabled()<CR>

" -----------------------------------------------------------------
" DEVICONS
" -----------------------------------------------------------------

let g:webdevicons_enable = 1
if exists("g:loaded_webdevicons")
   call webdevicons#refresh()
endif

" -----------------------------------------------------------------
" NERDCommenter
" -----------------------------------------------------------------

let g:NERDCreateDefaultMappings = 0
map <leader>/ <Plug>NERDCommenterToggle

" -----------------------------------------------------------------
" FZF
" -----------------------------------------------------------------

" Command Remaps
nnoremap <silent><leader>ff :Files<CR>
nnoremap <silent><leader>gf :GFiles<CR>
nnoremap <silent><leader>bl :Buffers<CR>
nnoremap <silent><leader>rg :Rg<CR>

" Adjust preview window size
let g:fzf_layout = { 'window': { 'width': 0.7, 'height': 0.6 } }

" -----------------------------------------------------------------
" Fugitive
" -----------------------------------------------------------------

nnoremap <silent><leader>ga :G add %<CR>
nnoremap <silent><leader>g. :G add .<CR> 
nnoremap <silent><leader>gc :G commit<CR>
nnoremap <silent><leader>gl :G log<CR>
nnoremap <silent><leader>gd :G diff %<CR>

" -----------------------------------------------------------------
" GitGutter
" -----------------------------------------------------------------

nnoremap ]h <Plug>(GitGutterNextHunk)
nnoremap [h <Plug>(GitGutterPrevHunk)

" -----------------------------------------------------------------
" Goyo
" -----------------------------------------------------------------

let g:focusup_py = 0
function FocusUpPyToggle()
    if (g:focusup_py == 0)
        let b:focusup_py = 0
        set wrap | set linebreak | set bri 
        nnoremap j gj
        nnoremap k gk
        nnoremap A g$a
        nnoremap I g^i
        nnoremap <A-h> g^
        nnoremap <A-l> g$
        vnoremap <A-h> g^
        vnoremap <A-l> g$
        :Goyo
        set nu | set rnu
    else
        let g:focusup_py = 1
        set nowrap | set nolinebreak | set bri
        unmap j
        unmap k
        unmap A
        unmap I
        nnoremap <A-h> ^
        nnoremap <A-l> g_
        vnoremap <A-h> ^
        vnoremap <A-l> g_
        :Goyo
        set nu | set rnu
    endif
endfunction

let g:focusup_md = 0
function FocusUpToggle()
    if (g:focusup_md == 0)
        let b:focusup_md = 0
        set wrap | set linebreak | set bri 
        nnoremap j gj
        nnoremap k gk
        nnoremap A g$a
        nnoremap I g^i
        nnoremap <A-h> g^
        nnoremap <A-l> g$
        vnoremap <A-h> g^
        vnoremap <A-l> g$
        :Goyo
    else
        let g:focusup_md = 1
        set nowrap | set nolinebreak | set bri
        unmap j
        unmap k
        unmap A
        unmap I
        nnoremap <A-h> ^
        nnoremap <A-l> g_
        vnoremap <A-h> ^
        vnoremap <A-l> g_
        :Goyo
    endif
endfunction

nnoremap <silent> <leader>z :call FocusUpToggle()<CR>

" -----------------------------------------------------------------
" NERDTree
" -----------------------------------------------------------------

let NERDTreeHighlightCursorline = 0
let NERDTreeWinSize = 40
nnoremap <silent><leader>nt :NERDTreeToggle<CR>
nnoremap <leader>eb :EditBookmarks
" NERDTRee Mark Bookmarks
nnoremap <leader>bm0 :Bookmark [0]<CR>
nnoremap <leader>bm1 :Bookmark [1]<CR>
nnoremap <leader>bm2 :Bookmark [2]<CR>
nnoremap <leader>bm3 :Bookmark [3]<CR>
nnoremap <leader>bm4 :Bookmark [4]<CR>
nnoremap <leader>bm5 :Bookmark [5]<CR>
nnoremap <leader>bm6 :Bookmark [6]<CR>
nnoremap <leader>bm7 :Bookmark [7]<CR>
nnoremap <leader>bm8 :Bookmark [8]<CR>
nnoremap <leader>bm9 :Bookmark [9]<CR>
" NERDTRee Open Bookmarks
nnoremap <silent><leader>ob0 :OpenBookmark [0]<CR>
nnoremap <silent><leader>ob1 :OpenBookmark [1]<CR>
nnoremap <silent><leader>ob2 :OpenBookmark [2]<CR>
nnoremap <silent><leader>ob3 :OpenBookmark [3]<CR>
nnoremap <silent><leader>ob4 :OpenBookmark [4]<CR>
nnoremap <silent><leader>ob5 :OpenBookmark [5]<CR>
nnoremap <silent><leader>ob6 :OpenBookmark [6]<CR>
nnoremap <silent><leader>ob7 :OpenBookmark [7]<CR>
nnoremap <silent><leader>ob8 :OpenBookmark [8]<CR>
nnoremap <silent><leader>ob9 :OpenBookmark [9]<CR>

" NERDTRee Clear Bookmarks
nnoremap <leader>cb0 :ClearBookmarks [0]<CR>
nnoremap <leader>cb1 :ClearBookmarks [1]<CR>
nnoremap <leader>cb2 :ClearBookmarks [2]<CR>
nnoremap <leader>cb3 :ClearBookmarks [3]<CR>
nnoremap <leader>cb4 :ClearBookmarks [4]<CR>
nnoremap <leader>cb5 :ClearBookmarks [5]<CR>
nnoremap <leader>cb6 :ClearBookmarks [6]<CR>
nnoremap <leader>cb7 :ClearBookmarks [7]<CR>
nnoremap <leader>cb8 :ClearBookmarks [8]<CR>
nnoremap <leader>cb9 :ClearBookmarks [9]<CR>

" -----------------------------------------------------------------
"  NEOTERM
" -----------------------------------------------------------------
function IPythonR()
    let g:neoterm_size = 80
    let g:neoterm_shell = "ipython"
    vert Tnew
endfunction

function IPythonB()
    let g:neoterm_size = 13
    let g:neoterm_shell = "ipython"
    rightbelow Tnew
endfunction

function Pwsh()
    let g:neoterm_size = 13
    let g:neoterm_shell = "powershell.exe"
    rightbelow Tnew
endfunction

function Zsh()
    let g:neoterm_size = 13
    let g:neoterm_shell = "zsh"
    rightbelow Tnew
endfunction

" Run Python code
nnoremap <silent><leader>rp :let @1 = expand("%")<CR> :T %run <C-R>1<CR>

" Terminal Commands
nnoremap <leader>pr :call IPythonR()<CR>
nnoremap <leader>pb :call IPythonB()<CR>
nnoremap <leader>pp :call Zsh()<CR>
nnoremap <leader>pc :Tclose<CR>
:command Powershell :call Pwsh()

" -----------------------------------------------------------------
 "NERDTree Git | NERDTree Git Support
" -----------------------------------------------------------------

let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0

" -----------------------------------------------------------------
" Git Branch | Git branch detection
" -----------------------------------------------------------------

" Configure statusline with Gitbranch
set statusline=
set statusline=\ 
set statusline+=[%{gitbranch#name()}]
set statusline+=\ %f
set statusline+=%=
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\ %l/%L
set statusline+=\ 

" -----------------------------------------------------------------
" POLYGOT | Better syntax highlighting
" -----------------------------------------------------------------

let g:python_highlight_space_errors = 0

" -----------------------------------------------------------------
" TAGBAR
" -----------------------------------------------------------------

"let g:tagbar_ctags_bin = '/mnt/c/Users/larry/ctags/'
nnoremap <silent><leader>tb :TagbarToggle<CR>
nnoremap <A-t> :TagbarOpen [j]<CR>
let g:tagbar_width = 40
let g:tagbar_foldlevel = 0
let g:tagbar_sort = 0

" -----------------------------------------------------------------
" VIMSPECTOR
" -----------------------------------------------------------------

let g:vimspector_enable_mappings = 'HUMAN'
let g:python3_host_prog = '/usr/bin/python3'

" Start and stop vimspector
nnoremap <Leader>dd :call vimspector#Launch()<CR>
nnoremap <Leader>de :call vimspector#Reset()<CR>
nnoremap <Leader>dc :call vimspector#Continue()<CR>

" Toggle Breakpoints
nnoremap <Leader>dt :call vimspector#ToggleBreakpoint()<CR>
nnoremap <Leader>dT :call vimspector#ClearBreakpoints()<CR>

" Commands Debugging Mode
nmap <Leader>dk <Plug>VimspectorRestart
nmap <Leader>dh <Plug>VimspectorStepOut
nmap <Leader>dl <Plug>VimspectorStepInto
nmap <Leader>dj <Plug>VimspectorStepOver
nmap <Leader>di <Plug>VimspectorBalloonEval

" -----------------------------------------------------------------
" VIMWIKI | Personal Wiki
" -----------------------------------------------------------------

let g:vimwiki_conceallevel=2
let g:vimwiki_list = [{'path': '~/vimwiki/',
            \ 'syntax': 'markdown', 'ext': '.md'}]
nmap <Leader>tl <Plug>VimwikiToggleListItem
vmap <Leader>tl <Plug>VimwikiToggleListItem
"let g:vimwiki_conceallevel=0
"let g:vimwiki_url_maxsave=50

" -----------------------------------------------------------------
" VIMTRANSPARENT | Enable Transparent Vim Background
" -----------------------------------------------------------------

let g:transparent_enabled = v:true

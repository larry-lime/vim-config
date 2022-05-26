" ----------------------------------------------------------------
"░██████╗░███████╗███╗░░██╗███████╗██████╗░░█████╗░██╗░░░░░
"██╔════╝░██╔════╝████╗░██║██╔════╝██╔══██╗██╔══██╗██║░░░░░
"██║░░██╗░█████╗░░██╔██╗██║█████╗░░██████╔╝███████║██║░░░░░
"██║░░╚██╗██╔══╝░░██║╚████║██╔══╝░░██╔══██╗██╔══██║██║░░░░░
"╚██████╔╝███████╗██║░╚███║███████╗██║░░██║██║░░██║███████╗
"░╚═════╝░╚══════╝╚═╝░░╚══╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝╚══════╝
" -----------------------------------------------------------------

" -----------------------------------------------------------------
" SET
" -----------------------------------------------------------------

syntax on
set nocursorline
set laststatus=3
set syntax=markdown
set signcolumn=yes
set showtabline=2
set shiftwidth=4
set rnu
set nolist
set expandtab
set ruler
set autoindent
set nobackup
set nowritebackup
set nu
set nowrap
set backspace=indent,eol,start
set viminfo=
set noswapfile
set ignorecase
set smartcase
set incsearch
set scrolloff=4
set splitright splitbelow
set termguicolors
set mouse=a
set encoding=UTF-8
set cmdheight=1
set showcmd
set hidden
set nohlsearch

" -----------------------------------------------------------------
"  Functions
" -----------------------------------------------------------------
function LoadSession(name)
    let b:sesh = join(["./.sessions/",a:name],"")
    if filereadable(b:sesh)
        silent! execute 'source ' b:sesh
    endif
endfunction

function MakeSession(name)
    tabdo NERDTreeClose
    tabdo TagbarClose
    let b:sesh = join(["./.sessions/",a:name],"")
    if !isdirectory("./.sessions")
        call mkdir("./.sessions", "p")
        silent! execute 'mksession! ' b:sesh
    else
        silent! execute 'mksession! ' b:sesh
    endif
endfunction

function ExitVim()
    call MakeSession('lastsession.vim')
    silent! execute 'qa!'
endfunction

" -----------------------------------------------------------------
"  Keyboard Shortcuts
" -----------------------------------------------------------------

" Set Leader Key
let mapleader=" "
nnoremap <leader>ss :call MakeSession('mysession.vim') \| tabn<CR>
nnoremap <leader>sl :call LoadSession('mysession.vim')<CR>
nnoremap <silent><leader>qq :call ExitVim()<CR>
" Buffer Navigation
nnoremap gb :bn<CR>
nnoremap gB :bp<CR>
nnoremap <silent><leader>oo :bd!<CR>
nnoremap <leader>oa :%bd!\|e#\|bd#<CR>
" Open and Close tabs
nnoremap <leader>tn :tabnew \| NERDTree<CR>
nnoremap <leader>tc :tabclose<CR>
" Open Terminal Windows
nnoremap <leader>ppr :vsplit \| set nonu \| set nornu \| terminal<CR>
nnoremap <leader>ppb :split \| set nonu \| set nornu \|  terminal<CR>
" Open Smaller Terminal Windows
nnoremap <leader>tr :vsplit \| set nonu \| set nornu \| vertical resize -20 \| terminal<CR>
nnoremap <leader>tt :split \| set nonu \| set nornu \| resize -20 \| terminal<CR>
" Terminal Navigation
tnoremap <Esc> <C-\><C-n>
tnoremap <Esc> <C-\><C-n>
" Make <C-D> & <C-U> more pleasant
nnoremap <C-U> <C-U>zz
nnoremap <C-D> <C-D>zz
" Renaming
nnoremap <leader>rn *Ncgn
nnoremap <leader>v g_v^
" Surrounding quotes, brackets, and curly braces
nnoremap <leader>' ciw'<C-R>"'<Esc>
nnoremap <leader>" ciw"<C-R>""<Esc>
nnoremap <leader>( ciW(<C-R>")<Esc>F(
nnoremap <leader>[ ciW[<C-R>"]<Esc>F[
nnoremap <leader>{ ciW{<C-R>"}<Esc>
nnoremap <leader>` ciw`<C-R>"`<Esc>
xnoremap <leader>' c'<C-R>"'<Esc>
xnoremap <leader>" c"<C-R>""<Esc>
xnoremap <leader>( c(<C-R>")<Esc>F(
xnoremap <leader>[ c[<C-R>"]<Esc>F[
xnoremap <leader>{ c{<C-R>"}<Esc>
xnoremap <leader>` c`<C-R>"`<Esc>
" Undo Breakpoints
inoremap , ,<C-G>u
inoremap [ [<C-G>u
" Keep it Centerd
inoremap ( (<C-G>u
nnoremap J mzJ`z
" Jump to beginning and end of line
nnoremap <S-h> ^
nnoremap <S-l> g_
vnoremap <S-h> ^
vnoremap <S-l> g_

" -------------------------------------------------------------------------------
" COMMANDS
" -------------------------------------------------------------------------------
:command Cpath let @" = expand("%")
:command Cfile let @" = expand("%:p")
:command Settings tabnew /mnt/c/Users/larry/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json 
            \| let b:auto_save = 0

" -----------------------------------------------------------------
" SPLITS
" -----------------------------------------------------------------

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" -----------------------------------------------------------------
" COPYPASTE
" -----------------------------------------------------------------

xnoremap <C-C> "+y
xnoremap <C-V> "+p

if has('wsl')
    let g:clipboard = {
          \   'name': 'wslclipboard',
          \   'copy': {
          \      '+': '/mnt/c/Users/larry/scoop/apps/neovim/0.6.1/bin/win32yank.exe -i --crlf',
          \    },
          \   'paste': {
          \      '+': '/mnt/c/Users/larry/scoop/apps/neovim/0.6.1/bin/win32yank.exe -i --crlf',
          \   },
          \   'cache_enabled': 1,
          \ }
endif

" -----------------------------------------------------------------
" ADJUSTSIZE
" -----------------------------------------------------------------

noremap <silent> <C-Left> :vertical resize +2<CR>
noremap <silent> <C-Right> :vertical resize -2<CR>
noremap <silent> <C-Up> :resize -2<CR>
noremap <silent> <C-Down> :resize +2<CR>

" -----------------------------------------------------------------
" MACROS | Preset Macros
" -----------------------------------------------------------------

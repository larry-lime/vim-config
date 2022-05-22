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
"  SETTINGS
" -----------------------------------------------------------------

" Set Leader Key
let mapleader=" "
" Buffer Navigation
nnoremap gb :bn<CR>
nnoremap gB :bp<CR>
nnoremap <silent><leader>oo :bd!<CR>
nnoremap <leader>oa :%bd!\|e#\|bd#<CR>
nnoremap <leader>qq :qa!<CR>
" Terminal Navigation
tnoremap <Esc> <C-\><C-n>
tnoremap <Esc> <C-\><C-n>
" Make <C-D> & <C-U> more pleasant
nnoremap <C-U> 0<C-U>
nnoremap <C-D> 0<C-D>
" Renaming
nnoremap <leader>rn *Ncgn
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
" Visual Mode Add-On
nnoremap <leader>v g_v^
" Shift text
inoremap <silent> <A-j> <Esc>:m .+1<CR>==
inoremap <silent> <A-k> <Esc>:m .-2<CR>==
vnoremap <silent> <A-j> :m '>+1<CR>gv
vnoremap <silent> <A-k> :m '<-2<CR>gv
nnoremap <silent> <A-j> :m .+1<CR>
nnoremap <silent> <A-k> :m .-2<CR>
" Undo Breakpoints
inoremap , ,<C-G>u
inoremap [ [<C-G>u
" Keep it Centerd
inoremap ( (<C-G>u
nnoremap J mzJ`z
" Jump to beginning and end of line
nnoremap <A-h> ^
nnoremap <A-l> g_
vnoremap <A-h> ^
vnoremap <A-l> g_

function MakeSession()
    tabdo NERDTreeClose
    tabn
    if !isdirectory("./sessions")
        call mkdir("./sessions", "p")
        mksession! ./sessions/mysession.vim
    else
        mksession! ./sessions/mysession.vim
    endif
endfunction

nnoremap <leader>ss :call MakeSession()<CR>
nnoremap <leader>sl :source ./sessions/mysession.vim <CR>

" -------------------------------------------------------------------------------
" COMMANDS
" -------------------------------------------------------------------------------

:command Cpath let @" = expand("%")
:command Cfile let @" = expand("%:p")
:command Settings tabnew '/mnt/c/Users/larry/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json'

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

" -----------------------------------------------------------------
" NO SHOW MODE
" -----------------------------------------------------------------
let s:hidden_all = 0
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=3
        set noshowcmd
        set showtabline=0
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=3
        set showtabline=2
        set showcmd
    endif
endfunction

nnoremap <silent><A-z> :call ToggleHiddenAll()<CR>

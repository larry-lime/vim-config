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
"set statusline
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
"set noerrorbells
"set statusline
"set noshowmode
"set cursorcolumn
"set statusline+=%F
"set updatetime=300
"set shortmess+=c
"set belloff=all
"set clipboard=unnamedplus

" -----------------------------------------------------------------
"  SETTINGS
" -----------------------------------------------------------------

"let g:python3_host_prog = "~/AppData/Local/Microsoft/WindowsApps/python3.10.exe"
let mapleader=" "
tnoremap <Esc> <C-\><C-n>
nnoremap <C-U> 0<C-U>
nnoremap <C-D> 0<C-D>
nnoremap <leader>qq :qa!<CR>
" Surrounding
"nnoremap <C-s> :w<CR>
tnoremap <Esc> <C-\><C-n>
imap <C-s> <Esc>:w<CR>
nnoremap <C-U> 0<C-U>
nnoremap <C-D> 0<C-D>
nnoremap <leader>/ :noh<CR>
" Renaming
nnoremap <leader>rn *Ncgn
nnoremap <leader>ra ""yiw:%s/<C-R>*
" Surrounding quotes, brackets, and curly braces
" Normal Mode
nnoremap <leader>' ciw'<C-R>"'<Esc>
nnoremap <leader>" ciw"<C-R>""<Esc>
nnoremap <leader>( ciW(<C-R>")<Esc>F(
nnoremap <leader>[ ciW[<C-R>"]<Esc>F[
nnoremap <leader>{ ciW{<C-R>"}<Esc>
nnoremap <leader>` ciw`<C-R>"`<Esc>
" Visual Mode
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
" Add in == to autoindent
nnoremap <silent> <A-j> :m .+1<CR>
nnoremap <silent> <A-k> :m .-2<CR>
" Undo Breakpoints
inoremap , ,<C-G>u
inoremap [ [<C-G>u
" Keep it Centerd
inoremap ( (<C-G>u
nnoremap J mzJ`z
" Jump to beginning and end of line
nnoremap <A-h> 0
nnoremap <A-l> $
vnoremap <A-h> 0
vnoremap <A-l> $
inoremap <A-h> <Esc>I
inoremap <A-l> <Esc>A

" -------------------------------------------------------------------------------
" COMMANDS
" -------------------------------------------------------------------------------

":command Settings e C:\Users\larry\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
:command Settings tabnew /mnt/c/Users/larry/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json
:command Sumatra tabnew /mnt/c/Users/larry/AppData/Local/SumatraPDF/SumatraPDF-settings.txt

" -------------------------------------------------------------------------------
" BUFFERS
" -------------------------------------------------------------------------------

nnoremap gb :bn<CR>
nnoremap gB :bp<CR>
nnoremap <leader>oo :bd!<CR>
nnoremap <leader>oa :%bd!\|e#\|bd#<CR>
nnoremap <leader>wl :Windows<CR>
nnoremap <silent><leader>bl :Buffers<CR>
nnoremap <silent><leader>cl :Colors<CR>
"
" -----------------------------------------------------------------
"  TERMINAL
" -----------------------------------------------------------------

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
"nnoremap <C-C> :!/mnt/c/Users/larry/scoop/apps/neovim/0.6.1/bin/win32yank.exe -i --crlf<CR>
"xnoremap <C-C> :!/mnt/c/Users/larry/scoop/apps/neovim/0.6.1/bin/win32yank.exe -i-crlf<CR>

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
" MACROS
" -----------------------------------------------------------------
" :let @a="iHello World!\<CR>bye\<Esc>"

nnoremap <leader>1 @1
" -----------------------------------------------------------------
" MAXIMIZE WINDOW
" -----------------------------------------------------------------
nnoremap <leader>m :tabnew %<CR>
nnoremap <leader>x :tabclose<CR>
" -----------------------------------------------------------------
" DISTRACTION FREE
" -----------------------------------------------------------------
let g:dfm_width = 90 "absolute width or percentage, like 0.7
let g:dfm_height = 0.9

let s:dfm_enabled = 0

function! ToggleDistractionFreeMode()
  let l:w = g:dfm_width > 1 ? g:dfm_width : (winwidth('%') * g:dfm_width)
  let l:margins = {
	\ "l": ("silent leftabove " . float2nr((winwidth('%') - l:w) / 2 - 1) . " vsplit new"),
	\ "h": ("silent rightbelow " . float2nr((winwidth('%') - l:w) / 2 - 1) . " vsplit new"),
	\ "j": ("silent leftabove " . float2nr(winheight('%') * (1 - g:dfm_height) / 2 - 1) . " split new"),
	\ "k": ("silent rightbelow " . float2nr(winheight('%') * (1 - g:dfm_height) / 2 - 1) . " split new"),
	\ }
  if (s:dfm_enabled == 0)
    let s:dfm_enabled = 1
    for key in keys(l:margins)
      execute l:margins[key] . " | wincmd " . key
    endfor
    "for key in ['NonText', 'VertSplit', 'StatusLine', 'StatusLineNC']
      "execute 'hi ' . key . ' ctermfg=bg ctermbg=bg cterm=NONE'
    "endfor
    set wrap
    set linebreak
    set nornu
    set nonu
    set laststatus=3
    map j gj
    map k gk
  else
    let s:dfm_enabled = 0
    for key in keys(l:margins)
      execute "wincmd " . key . " | close "
    endfor
    set nowrap
    set nolinebreak
    set rnu
    set nu
    set laststatus=3
    unmap j
    unmap k
  endif
endfunction

nnoremap <silent> <Leader>z :call ToggleDistractionFreeMode()<CR>

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



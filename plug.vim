
"██████╗░██╗░░░░░██╗░░░██╗░██████╗░
"██╔══██╗██║░░░░░██║░░░██║██╔════╝░
"██████╔╝██║░░░░░██║░░░██║██║░░██╗░
"██╔═══╝░██║░░░░░██║░░░██║██║░░╚██╗
"██║░░░░░███████╗╚██████╔╝╚██████╔╝
"╚═╝░░░░░╚══════╝░╚═════╝░░╚═════╝░
" -------------------------------------------------------------------------------
call plug#begin()
" -------------------------------------------------------------------------------
" IDE Features
" -------------------------------------------------------------------------------

Plug 'https://github.com/puremourning/vimspector.git' " Vimspector 
Plug 'https://github.com/pseewald/vim-anyfold.git' " Anyflold
Plug 'https://github.com/907th/vim-auto-save.git' " Auto Save  
Plug 'https://github.com/preservim/nerdtree.git' " NERDTree 
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Coc 
Plug 'https://github.com/preservim/tagbar.git' " Tagbar  
Plug 'https://github.com/kassio/neoterm.git' " Neoterm 
Plug 'preservim/nerdcommenter' " NERDCommenter 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf' " FZF

" -------------------------------------------------------------------------------
" Language Support
" -------------------------------------------------------------------------------

Plug 'kevinoid/vim-jsonc' " JSON Vim support

" -------------------------------------------------------------------------------
" Git
" -------------------------------------------------------------------------------

Plug 'https://github.com/airblade/vim-gitgutter.git' " Git Gutter
Plug 'https://github.com/tpope/vim-fugitive.git' " Vim Fugitive
Plug 'Xuyuanp/nerdtree-git-plugin' " NERDTree Git Support
Plug 'itchyny/vim-gitbranch' " Git branch

" -------------------------------------------------------------------------------
" Themes
" -------------------------------------------------------------------------------

Plug 'navarasu/onedark.nvim' " Onedark
Plug 'sonph/onehalf', { 'rtp': 'vim' } " One Half

" -------------------------------------------------------------------------------
"  Aesthetics
" -------------------------------------------------------------------------------

Plug 'https://github.com/xiyaowong/nvim-transparent.git' " Nvim Transparent
Plug 'https://github.com/tiagofumo/vim-nerdtree-syntax-highlight.git' "NERDTree Highlighting
Plug 'ryanoasis/vim-devicons' " Devicons
Plug 'antoinemadec/coc-fzf' " Coc-FZF

" -------------------------------------------------------------------------------
" Add-Ons
" -------------------------------------------------------------------------------

Plug 'vimwiki/vimwiki' " Vimwiki
Plug 'github/copilot.vim' " Copilot
Plug 'sheerun/vim-polyglot' " Polygot
Plug 'junegunn/goyo.vim' " Goyo 

" -------------------------------------------------------------------------------
"  Disabled Plugins
" -------------------------------------------------------------------------------

"Plug 'https://github.com/morhetz/gruvbox.git' " Gruvbox
"Plug 'https://github.com/ray-x/starry.nvim.git' " Starry Themes
"Plug 'karoliskoncevicius/vim-sendtowindow' " Send to Window
"Plug 'justinmk/vim-sneak' " Vim-sneak
"Plug 'https://github.com/itchyny/calendar.vim.git'
"Plug 'psf/black', { 'branch': 'stable' } " Black
"Plug 'mg979/vim-visual-multi', {'branch': 'master'} " Multi-Cursor
"Plug 'https://github.com/vim-airline/vim-airline-themes.git' " Airline Theme
"Plug 'https://github.com/vim-airline/vim-airline.git' " Airline

" -------------------------------------------------------------------------------
call plug#end()
" -------------------------------------------------------------------------------

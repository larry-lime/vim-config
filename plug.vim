"-----------------------------------------------------------------
"██████╗░██╗░░░░░██╗░░░██╗░██████╗░
"██╔══██╗██║░░░░░██║░░░██║██╔════╝░
"██████╔╝██║░░░░░██║░░░██║██║░░██╗░
"██╔═══╝░██║░░░░░██║░░░██║██║░░╚██╗
"██║░░░░░███████╗╚██████╔╝╚██████╔╝
"╚═╝░░░░░╚══════╝░╚═════╝░░╚═════╝░
" -----------------------------------------------------------------

" -------------------------------------------------------------------------------
call plug#begin()
" -------------------------------------------------------------------------------
" IDE Features
" -------------------------------------------------------------------------------

Plug 'puremourning/vimspector' " Vimspector 
Plug 'pseewald/vim-anyfold' " Anyflold
Plug '907th/vim-auto-save' " Auto Save  
Plug 'preservim/nerdtree' " NERDTree 
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Coc 
Plug 'preservim/tagbar' " Tagbar  
Plug 'kassio/neoterm' " Neoterm 
Plug 'preservim/nerdcommenter' " NERDCommenter 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' " FZF
Plug 'matze/vim-move' " Vim Move
Plug 'tpope/vim-surround' " Vim Surround

" -------------------------------------------------------------------------------
" Language Support
" -------------------------------------------------------------------------------

Plug 'kevinoid/vim-jsonc' " JSON Vim support

" -------------------------------------------------------------------------------
" Git
" -------------------------------------------------------------------------------

Plug 'airblade/vim-gitgutter' " Git Gutter
Plug 'tpope/vim-fugitive' " Vim Fugitive
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

Plug 'xiyaowong/nvim-transparent' " Nvim Transparent
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' "NERDTree Highlighting
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

"Plug 'glepnir/dashboard-nvim'
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

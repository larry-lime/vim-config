"------------------------------------------------------------------------------------
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
Plug 'https://github.com/kassio/neoterm.git' " Neoterm
Plug 'https://github.com/preservim/nerdtree.git' " NERDTree
Plug 'https://github.com/preservim/tagbar.git' " Tagbar
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Coc
Plug 'preservim/nerdcommenter' " NERDCommenter
Plug 'kevinoid/vim-jsonc' " JSON Vim support
Plug 'itchyny/vim-gitbranch' " Git branch
Plug 'https://github.com/airblade/vim-gitgutter.git' " Git Gutter
Plug 'https://github.com/tpope/vim-fugitive.git' " Vim Fugitive

" -------------------------------------------------------------------------------
" Themes
" -------------------------------------------------------------------------------
Plug 'navarasu/onedark.nvim' " Onedark
Plug 'sonph/onehalf', { 'rtp': 'vim' }

" -------------------------------------------------------------------------------
" Add-Ons
" -------------------------------------------------------------------------------

Plug 'vimwiki/vimwiki' " Vimwiki
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " FZF
Plug 'junegunn/fzf.vim' " FZF
Plug 'github/copilot.vim' " Copilot
Plug 'sheerun/vim-polyglot' " Polygot
Plug 'antoinemadec/coc-fzf' " Coc-FZF
Plug 'https://github.com/xiyaowong/nvim-transparent.git'
Plug 'https://github.com/itchyny/calendar.vim.git'
Plug 'junegunn/goyo.vim' " Goyo 

" -------------------------------------------------------------------------------
"  Disabled Plugins
" -------------------------------------------------------------------------------

"Plug 'https://github.com/morhetz/gruvbox.git' " Gruvbox
"Plug 'https://github.com/ray-x/starry.nvim.git' " Starry Themes
"Plug 'karoliskoncevicius/vim-sendtowindow' " Send to Window
"Plug 'justinmk/vim-sneak' " Vim-sneak
"Plug 'psf/black', { 'branch': 'stable' } " Black
"Plug 'mg979/vim-visual-multi', {'branch': 'master'} " Multi-Cursor
"Plug 'https://github.com/tiagofumo/vim-nerdtree-syntax-highlight.git'  NERDTree Highlighting
"Plug 'https://github.com/vim-airline/vim-airline-themes.git' " Airline Theme
"Plug 'https://github.com/vim-airline/vim-airline.git' " Airline
"Plug 'ryanoasis/vim-devicons' " Devicons

" -------------------------------------------------------------------------------
call plug#end()
" -------------------------------------------------------------------------------

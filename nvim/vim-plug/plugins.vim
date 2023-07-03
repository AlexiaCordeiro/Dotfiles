" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif


call plug#begin('~/.config/nvim/autoload/plugged')
"Discord rich presence 
    Plug 'andweeb/presence.nvim'
"Find sintax errors
    Plug 'maxmellon/vim-jsx-pretty'
"COC 
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Arquivos
    Plug 'preservim/nerdtree'
"Rainbow bracket
    Plug 'frazrepo/vim-rainbow'
"Lightline
    Plug 'itchyny/lightline.vim'
"Autocomplete
    Plug 'davidhalter/jedi-vim'
"Automaticly close bracket
    Plug 'jiangmiao/auto-pairs'
"Autosave
    Plug 'Pocco81/auto-save.nvim'
" Switch to the begining and the end of a block by pressing %
    Plug 'tmhedberg/matchit'
" Git integration
    Plug 'tpope/vim-fugitive'
"Nvim theme
    Plug 'ayu-theme/ayu-vim' 
"Terminal
    Plug 'kassio/neoterm'
"Clang
    Plug 'deoplete-plugins/deoplete-clang'
"Linting
    Plug 'dense-analysis/ale'
"Autocomplete
    Plug 'zchee/deoplete-jedi'
"Code sintax
    Plug 'neomake/neomake'
"Highligting
    Plug 'machakann/vim-highlightedyank'
"Code folding
    Plug 'tmhedberg/SimpylFold'
"Python linting
    Plug 'vim-scripts/pylint.vim'
"for c#

Plug 'neovim/nvim-lspconfig'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

call plug#end()


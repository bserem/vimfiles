set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'myusuf3/numbers.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'altercation/vim-colors-solarized'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle 'garbas/vim-snipmate'
Bundle 'gmarik/sudo-gui.vim'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

set encoding=UTF-8

set smartindent
set tabstop=2 "number of spaces that a <Tab> in the file counts for
set softtabstop=2 "number of spaces that a <Tab> counts for while performing editing operations
set shiftwidth=2 "number of spaces to use for each step of (auto)indent
set expandtab "use the appropriate number of spaces to insert a <Tab>.
set smarttab "makes a <Tab> in front of a line insert blanks according to 'shiftwidth'

set ignorecase "ignore case on searches and everywhere else
set infercase "make insert-matching preserve the already written characters
"set mouse=a "enable the mouse in compatible terms for all modes
set number "enable line numbers
set smartcase "enable case sensitive search if pattern contains upper case
set wildmenu "show possible completion matches
set wildmode=list:longest "list all matches and complete to longest common string
set scrolloff=3 "minimal number of screen lines to keep above/below the cursor 


nnoremap <F3> :NumbersToggle<CR> 
let g:enable_numbers = 0

" => Appearence options
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
syntax on "turn on syntax highlighting
set ruler "show the line and column number of the cursor position
set background=dark
colorscheme solarized

" => Completion
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set pumheight=10 "maximum number of popup menu items for Insert mode completion
set completeopt=menuone,longest "show menu and complete longest, don't show preview window


" => Editing
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set backspace=indent,eol,start "intuitive backspacing in insert mode

" NERD Tree
""""""""""""""""""""""""""""""
"Toggle NERD Tree on/off
nmap <silent> <F4> :NERDTreeToggle<CR> 
"Filter uninteresting files
let NERDTreeIgnore = ['\.class$']

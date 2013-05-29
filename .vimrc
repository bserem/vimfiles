" START - Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
  let iCanHazVundle=0
endif
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
if iCanHazVundle == 0
  echo "Installing Bundles, please ignore key map error messages"
  echo ""
  :BundleInstall
endif
" END - Setting up Vundle - the vim plugin bundler

set nocompatible               " be iMproved
filetype off                   " required!

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'scrooloose/nerdtree'
"Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'altercation/vim-colors-solarized'
"Bundle 'garbas/vim-snipmate'
Bundle 'gmarik/sudo-gui.vim'
Bundle 'bserem/vim-drupal'
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
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

set encoding=UTF-8 "Always edit in utf-8

"Appearance
set ruler "show the line and column number of the cursor position
set background=dark
colorscheme solarized
match ErrorMsg '\%>80v.\+' "highlight anything after line 80
set title " change the terminal's title
"set visualbell " don't beep - DO NOT ENABLE THIS BECAUSE IS HANGS
                "WHEN ROLLING PAST THE FIRST AND LAST LINE
set noerrorbells " don't beep

" Enable syntax highlighting
if &t_Co > 1
  syntax enable
endif
syntax on

set nowrap "don't wrap lines

set smartindent
"set autoindent " always set autoindenting on
"set copyindent " copy the previous indentation on autoindenting
set tabstop=2 "number of spaces that a <Tab> in the file counts for
set softtabstop=2 "number of spaces that a <Tab> counts for while performing editing operations
set shiftwidth=2 "number of spaces to use for each step of (auto)indent
set shiftround " use multiple of shiftwidth when indenting with '<' and '>'
set expandtab "use the appropriate number of spaces to insert a <Tab>.
set smarttab "makes a <Tab> in front of a line insert blanks according to 'shiftwidth'

set backspace=indent,eol,start "allow backspacing over everything in insert mode
"set backspace=2 "Use standard backspace behavior

set history=1000 " remember more commands and search history
set undolevels=1000 " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class

set number "Show line numbers
set wildmode=longest,list "Complete longest string, then list alternatives
set pastetoggle=<F2> "Toggle paste mode
set fileformats=unix "Use Unix line endings
set showmode "Show whether in Visual, Replace, or Insert Mode
set showmatch "Show matching brackets/parentheses
set formatoptions=1 "Don't wrap text after a one-letter word

set incsearch "Find as you type
set ignorecase "ignore case on searches and everywhere else
set hlsearch "highlight search terms
set incsearch "show search matches as you type
set infercase "make insert-matching preserve the already written characters
"set mouse=a "enable the mouse in compatible terms for all modes
set smartcase "enable case sensitive search if pattern contains upper case
set wildmenu "show possible completion matches
set wildmode=list:longest "list all matches and complete to longest common string
set scrolloff=3 "minimal number of screen lines to keep above/below the cursor 

"Remove swap and backup files from working directory
set backupdir=~/.vimbackup//,/tmp
set directory=~/.vimbackup//,/tmp

"Completion
set pumheight=10 "maximum number of popup menu items for Insert mode completion
set completeopt=menuone,longest "show menu and complete longest, don't show preview window

"Toggle NERD Tree on/off
nmap <silent> <F4> :NERDTreeToggle<CR> 
"Filter uninteresting files
let NERDTreeIgnore = ['\.class$']

function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc
nnoremap <F3> :call NumberToggle()<CR>

"When in split screen, map <C-LeftArrow> and <C-RightArrow> to switch panes.
nn ESC[5C <C-W>w
nn ESC[5R <C-W>W

"Uncomment the following to have Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal! g'\"" | endif
endif

"Persistent Undo (vim 7.3 and later)
if exists('&undofile') && !&undofile
  set undodir=~/.vimbackup//
  set undofile
endif

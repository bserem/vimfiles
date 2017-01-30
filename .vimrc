set nocompatible              " be iMproved, required
filetype off                  " required

" START - Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  let iCanHazVundle=0
endif
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
if iCanHazVundle == 0
  echo "Installing Bundles, please ignore key map error messages"
  echo ""
  :PluginInstall
endif
" END - Setting up Vundle - the vim plugin bundler

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround.git'
Plugin 'ervandew/supertab'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'Shougo/neocomplete.vim'
Plugin 'gabrielelana/vim-markdown'
Plugin 'othree/csscomplete.vim'
Plugin 'othree/vim-autocomplpop'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'garbas/vim-snipmate'
Plugin 'altercation/vim-colors-solarized' "colorscheme
Plugin 'gregsexton/gitv'
Plugin 'captbaritone/better-indent-support-for-php-with-html'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'wincent/command-t'
Plugin 'godlygeek/tabular'
Plugin 'airblade/vim-gitgutter'
Plugin 'itchyny/lightline.vim'
Plugin 'gregsexton/MatchTag'
Plugin 'mbbill/undotree'
Plugin 'git://drupalcode.org/project/vimrc.git', {'rtp': 'bundle/vim-plugin-for-drupal/'}
Plugin 'majutsushi/tagbar'
Plugin 'joonty/vdebug'
Plugin 'jiangmiao/auto-pairs'
Plugin 'lumiliet/vim-twig'
Plugin 'kopischke/vim-fetch'
Plugin 'L9'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Put your non-Plugin stuff after this line
set langmenu=en_US.UTF-8   " sets the language of the menu (gvim)
language C                 " sets the language of the messages / ui (vim) to english
set laststatus=2

"Appearance
set ruler "show the line and column number of the cursor position
set background=light "we plan to use a dark background
colorscheme solarized

"match ErrorMsg '\%>80v.\+' "highlight anything after line 80
set colorcolumn=81 "mark column 81
set title " change the terminal's title
"set visualbell " don't beep - DO NOT ENABLE THIS BECAUSE IS HANGS
                "WHEN ROLLING PAST THE FIRST AND LAST LINE
set noerrorbells " don't beep

" Play well with people working on other OS
set ffs=unix,dos

" Enable syntax highlighting
if &t_Co > 1
  syntax enable
endif
syntax on

set nowrap "don't wrap lines
set smartindent
set autoindent " always set autoindenting on
set copyindent " copy the previous indentation on autoindenting
set tabstop=2 "number of spaces that a <Tab> in the file counts for
set softtabstop=2 "number of spaces that a <Tab> counts for while performing editing operations
set shiftwidth=2 "number of spaces to use for each step of (auto)indent
set shiftround " use multiple of shiftwidth when indenting with '<' and '>'
set expandtab "save as spaces rather than tabs
set smarttab "makes a <Tab> in front of a line insert blanks according to 'shiftwidth'
set backspace=indent,eol,start "allow backspacing over everything in insert mode
"set backspace=2 "Use standard backspace behavior
set history=1000 " remember more commands and search history
set undolevels=1000 " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set timeoutlen=300 " super low delay
"set relativenumber "Show relative line numbers
set number "Show line numbers
set wildmode=longest,list "Complete longest string, then list alternatives
set fileformats=unix "Use Unix line endings
set showmode "Show whether in Visual, Replace, or Insert Mode
set showmatch "Show matching brackets/parentheses
set formatoptions=1 "Don't wrap text after a one-letter word
set incsearch "Find as you type
set ignorecase "ignore case on searches and everywhere else
set hlsearch "highlight search terms
set incsearch "show search matches as you type
set infercase "make insert-matching preserve the already written characters
set mouse="" "disable the mouse in compatible terms for all modes
set smartcase "enable case sensitive search if pattern contains upper case
set wildmenu "show possible completion matches
set wildmode=list:longest "list all matches and complete to longest common string
set scrolloff=3 "minimal number of screen lines to keep above/below the cursor 

set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
"              | | | | |  |   |      |  |     |    |
"              | | | | |  |   |      |  |     |    + current column
"              | | | | |  |   |      |  |     +-- current line
"              | | | | |  |   |      |  +-- current % into file
"              | | | | |  |   |      +-- current syntax in square brackets
"              | | | | |  |   +-- current fileformat
"              | | | | |  +-- number of lines
"              | | | | +-- preview flag in square brackets
"              | | | +-- help flag in square brackets
"              | | +-- readonly flag in square brackets
"              | +-- rodified flag in square brackets
"              +-- full path to file in the buffer

"Remove swap and backup files from working directory
set backupdir=~/.vimbackup//,/tmp
set directory=~/.vimbackup//,/tmp
"Set location of .viminfo file, to play well with hosts that protect home folder
set viminfo+=n~/.vim/viminfo

"Completion
set pumheight=10 "maximum number of popup menu items for Insert mode completion
set completeopt=menuone,longest "show menu and complete longest, don't show preview window

set pastetoggle=<F2> "Toggle paste mode
"Toggle Numbers
nnoremap <F3> :NumbersToggle<CR>

"Toggle NERD Tree on/off
nmap <silent> <F4> :NERDTreeToggle<CR> 
"Filter uninteresting files
let NERDTreeIgnore = ['\.class$']
let g:ctrlp_map = '<F5>'

nmap <F8> :TagbarToggle<CR>
nnoremap <silent> <F9> :FufBuffer<CR>
nnoremap <silent> <F10> :FufFile<CR>

function! ToggleMouse()
  if(&mouse == '')
    set mouse=n
    echo "Mouse usage enabled for normal mode"
  else
    set mouse=
    echo "Mouse usage disabled"
  endif
endfunction
nnoremap <silent> <F12> :call ToggleMouse()<CR>

"When in split screen, map <C-LeftArrow> and <C-RightArrow> to switch panes.
nn ESC[5C <C-W>w
nn ESC[5R <C-W>W

" Ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

"Snipmate


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

"nnoremap gz :!zeal --query "<cword>"&<CR><CR>
" Languages {
" Greek {
" Use Greek letters in command mode.
        :set langmap=ΑA,ΒB,ΨC,ΔD,ΕE,ΦF,ΓG,ΗH,ΙI,ΞJ,ΚK,ΛL,ΜM,ΝN,ΟO,ΠP,QQ,ΡR,ΣS,ΤT,ΘU,ΩV,WW,ΧX,ΥY,ΖZ,αa,βb,ψc,δd,εe,φf,γg,ηh,ιi,ξj,κk,λl,μm,νn,οo,πp,qq,ρr,σs,τt,θu,ωv,ςw,χx,υy,ζz
" }
" }

let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'mode_map': { 'c': 'NORMAL' },
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ]
      \ },
      \ 'component_function': {
      \   'modified': 'LightlineModified',
      \   'readonly': 'LightlineReadonly',
      \   'fugitive': 'LightlineFugitive',
      \   'filename': 'LightlineFilename',
      \   'fileformat': 'LightlineFileformat',
      \   'filetype': 'LightlineFiletype',
      \   'fileencoding': 'LightlineFileencoding',
      \   'mode': 'LightlineMode',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '|', 'right': '|' }
      \ }
      "\ 'subseparator': { 'left': '', 'right': '' }
      "\ 'separator': { 'left': '', 'right': '' },
function! LightlineModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightlineReadonly()
  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? '': ''
endfunction

function! LightlineFilename()
  return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
        \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
        \  &ft == 'unite' ? unite#get_status_string() :
        \  &ft == 'vimshell' ? vimshell#get_status_string() :
        \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
        \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction

function! LightlineFugitive()
  if &ft !~? 'vimfiler\|gundo' && exists("*fugitive#head")
    let branch = fugitive#head()
    return branch !=# '' ? '⎇  '.branch : ''
    "return branch !=# '' ? ' '.branch : ''
  endif
  return ''
endfunction

function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

function! LightlineFileencoding()
  return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
endfunction

function! LightlineMode()
  return winwidth(0) > 60 ? lightline#mode() : ''
endfunction

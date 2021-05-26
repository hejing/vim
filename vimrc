"""""""""""""""""""""
" OS:  Mac OS       "
" GUI: MacVim       "
" Terminal: iTerm2  "
"""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

Plug 'embear/vim-localvimrc'

" File finder
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'scrooloose/nerdtree'
" Session manager
Plug 'xolox/vim-misc' | Plug 'xolox/vim-session'

" Text, easier navigation and editing
Plug 'ciaranm/detectindent'
Plug 'Lokaltog/vim-easymotion'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'baopham/vim-nerdtree-unfocus'
Plug 'baopham/trailertrash.vim'
Plug 'tpope/vim-repeat'
Plug 'xsunsmile/showmarks'
" Improve search
Plug 'osyo-manga/vim-anzu'

" CVS
Plug 'tpope/vim-fugitive'
Plug 'mattn/webapi-vim' | Plug 'mattn/gist-vim'
Plug 'mhinz/vim-signify'

" Syntax highlighting & templating
Plug 'mattn/sonictemplate-vim'
let g:polyglot_disabled = ['ftdetct']
Plug 'sheerun/vim-polyglot'
Plug 'elmcast/elm-vim', { 'for': ['elm'] }
Plug 'flowtype/vim-flow', { 'for': ['javascript', 'javascript.jsx'] }

" Tags & coding related
Plug 'majutsushi/tagbar'
Plug 'tomtom/tcomment_vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'neomake/neomake' | Plug 'jaawerth/neomake-local-eslint-first'
" {{{ Autocomplete
Plug 'davidhalter/jedi-vim', { 'for': ['python'] }
" if has('nvim')
"   Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" else
"   Plug 'Shougo/deoplete.nvim'
"   Plug 'roxma/nvim-yarp'
"   Plug 'roxma/vim-hug-neovim-rpc'
" endif
" let g:deoplete#enable_at_startup = 1
" Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
" }}}
Plug 'moll/vim-node'
Plug 'fatih/vim-go', { 'do': 'vim +GoInstallBinaries +qall' }
" HTML & CSS
Plug 'mattn/emmet-vim'

" Appearance
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'

" Others
Plug 'gmarik/sudo-gui.vim'
Plug 'thinca/vim-quickrun'
Plug 'vim-scripts/YankRing.vim'
Plug 'mbbill/undotree'
Plug 'szw/vim-maximizer'

call plug#end()

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Bundle 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Important settings
""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on

set laststatus=2
set encoding=utf-8
" Set vim for 256 color schemes
set t_Co=256

if has('mouse')
  set mouse=a
  if !has('gui_running')
      set ttymouse=xterm2
  endif
endif

if exists('+autochdir')
  set autochdir
else
  autocmd BufEnter * silent! lcd %:p:h:gs/ /\\ /
endif

" Disable bell
set visualbell

""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colorscheme
""""""""""""""""""""""""""""""""""""""""""""""""""""
colo onedark

""""
" => GUI MacVim
""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
  set gfn=Monaco\ for\ Powerline:h12
  set guioptions-=T
  set guioptions-=L
  set guioptions-=r
  set showtabline=2 "always show tabs
  set macmeta

  let g:tagbar_iconchars = ['▸', '▾']

  map <SwipeLeft> gT
  map <SwipeRight> gt
  imap <SwipeLeft> <Esc>gT<CR>
  imap <SwipeRight> <Esc>gt<CR>

  " Turn on/off transparency
  map <Leader>trn :set transparency=8<CR>
  map <Leader>trf :set transparency=0<CR>

  " Show tab number
  autocmd VimEnter * set guitablabel=%M\ %t\ \⌘%N

  " Enable horizontal scrolling
  " set guioptions+=h
  " set nowrap
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Miscellaneous
""""""""""""""""""""""""""""""""""""""""""""""""""""
set noshowmode
set binary

if !has("gui_running")
  set ttimeout
  set ttimeoutlen=100
endif

"  +c:  Apply 'textwidth' to comments.
"  +r:  Continue comments after hitting <Enter> in Insert mode.
"  +o:  Continue comments after when using 'O' or 'o' to open a new line.
"  +q:  Format comments using q<motion>.
"  +l:  Do not break a comment line if it is long before you start.
set formatoptions+=croql

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

set wildmenu "enable ctrl-n and ctrl-p to scroll thru matches
set wildmode=longest,full

set hlsearch

set ignorecase "ignore case when searching
set smartcase

set magic "set magic on, for regular expressions

set ruler
set number

set undolevels=1000

set splitbelow "split windows at bottom

set scrolloff=8 "start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

set listchars=eol:\ ,tab:\|\ ,trail:·,extends:>,precedes:<
set list

" Different background color for characters going past the 121 limit
" Credit: http://stackoverflow.com/a/13731714/949806
let &colorcolumn=join(range(121,999),",")

" Display help in vertical split window
command -nargs=* -complete=help Help vertical belowright help <args>

" Resize splits when window is resized
au VimResized * exe "normal! \<c-w>="

highlight MatchParen cterm=bold ctermfg=cyan

" Command to change to directory of the current file
command CDC cd %:p:h

" Swap, backup, undo  {{{
  set noundofile
  set nobackup
  set noswapfile
  set nowb
  if exists('+undofile')
    set undofile
    " Try `mkdir -p ~/.cache/vim/undo` if the directory doesn't already exist
    if isdirectory(expand('~/.cache/vim/undo')) && &undodir =~# '^\.\%(,\|$\)'
      set undodir^=~/.cache/vim/undo//
    endif
  endif
" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""
for fpath in split(globpath('~/.vim/settings', '*.vim'), '\n')
  exe 'source' fpath
endfor

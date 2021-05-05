" ======= General ========= "
" General "{{{
set nocompatible               " be iMproved

scriptencoding utf-8           " utf-8 all the way
set encoding=utf-8

set history=2000                " Number of things to remember in history.
set timeoutlen=250             " Time to wait after ESC (default causes an annoying delay)
set clipboard+=unnamed         " Yanks go on clipboard instead.
set pastetoggle=<F10>          " toggle between paste and normal: for 'safer' pasting from keyboard
set shiftround                 " round indent to multiple of 'shiftwidth'
set tags=.git/tags;$HOME       " consider the repo tags first, then
                               " walk directory tree upto $HOME looking for tags
                               " note `;` sets the stop folder. :h file-search
set cursorline

set autochdir

set modeline
set modelines=5                " default numbers of lines to read for modeline instructions

set autowrite                  " Writes on make/shell commands
set autoread

set nobackup
set nowritebackup
set directory=/tmp//           " prepend(^=) $HOME/.tmp/ to default path; use full path as backup filename(//)
set noswapfile                 "

set hidden                     " The current buffer can be put to the background without writing to disk

set hlsearch                   " highlight search
set ignorecase                 " be case insensitive when searching
set smartcase                  " be case sensitive when input has a capital letter
set incsearch                  " show matches while typing
set t_Co=256

let g:is_posix = 1             " vim's default is archaic bourne shell, bring it up to the 90s
let mapleader = ','
let maplocalleader = '  '      " Tab as a local leader

" 全局忽略文件
set wildignore+=*.png,*.jpg,*.bmp,*.gif  " Binary images
set wildignore+=*.pyc                    " Python byte code
set wildignore+=*.sw?                    " Vim swap files
set wildignore+=*.git,*.svn              " Version control tool
set wildignore+=*.DS_Store               " OSX bullshit
set wildignore+=*.tar.gz,*.zip,*.rar     " Compressed file

" 设置文件编码和文件格式
set encoding      =utf-8
set termencoding  =utf-8
set fileencoding  =utf-8
" set fileencodings =ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencodings=utf-8-bom,ucs-bom,utf-8,cp936,gb18030,ucs,big5
" "}}}

" Formatting "{{{
set fo+=o                      " Automatically insert the current comment leader after hitting 'o' or 'O' in Normal mode.
set fo-=r                      " Do not automatically insert a comment leader after an enter
set fo-=t                      " Do no auto-wrap text using textwidth (does not apply to comments)

set nowrap
set textwidth=0                " Don't wrap lines by default

set tabstop=4                  " tab size eql 2 spaces
set softtabstop=4
set shiftwidth=4               " default shift width for indents
set expandtab                  " replace tabs with ${tabstop} spaces
set smarttab                   "

set backspace=indent
set backspace+=eol
set backspace+=start

set autoindent
set cindent
set indentkeys-=0#            " do not break indent on #
set cinkeys-=0#
set cinoptions=:s,ps,ts,cs
set cinwords=if,else,while,do
set cinwords+=for,switch,case
" "}}}


" Visual "{{{
syntax on                      " enable syntax

" set synmaxcol=250              " limit syntax highlighting to 128 columns

set mouse= "enable mouse in GUI mode
set mousehide                 " Hide mouse after chars typed
set wrap

set number                  " line numbers Off
set showmatch                 " Show matching brackets.
set matchtime=2               " Bracket blinking.

set wildmode=longest,list     " At command line, complete longest common string, then list alternatives.

set completeopt+=preview

set novisualbell              " No blinking
set noerrorbells              " No noise.
set vb t_vb=                  " disable any beeps or flashes on error

set laststatus=2              " always show status line.
set shortmess=atI             " shortens messages
set showcmd                   " display an incomplete command in statusline

set statusline=%<%f\          " custom statusline
set stl+=[%{&ff}]             " show fileformat
set stl+=%y%m%r%=
set stl+=%-14.(%l,%c%V%)\ %P


set foldenable                " Turn on folding
set foldmethod=marker         " Fold on the marker
set foldlevel=100             " Don't autofold anything (but I can still fold manually)

set foldopen=block,hor,tag    " what movements open folds
set foldopen+=percent,mark
set foldopen+=quickfix

set virtualedit=block

set splitbelow
set splitright

set list                      " display unprintable characters f12 - switches
set listchars=tab:\¦·,eol:¬
set listchars+=trail:·
set listchars+=extends:»,precedes:«
map <silent> <F2> :set invlist<CR>

if has('gui_running')
  set guioptions=cMg " console dialogs, do not show menu and toolbar

  " Fonts
  " :set guifont=* " to launch a GUI dialog
  if has('mac')
  set guifont=Andale\ Mono:h13
  else
  set guifont=Terminus:h16
  end

  if has('mac')
  set noantialias
  " set fullscreen
  set fuoptions=maxvert,maxhorz ",background:#00AAaaaa
  endif
endif
" "}}}

" ======== env
source ~/.config/nvim/env.vim

" ======== plugin 
source ~/.config/nvim/Plugin.vim

" ======== color-scheme
source ~/.config/nvim/scheme.vim

" ======== nerdtree
source ~/.config/nvim/nerdtree.vim

" ======== bufexplore.vim
source ~/.config/nvim/bufexplore.vim

" ======== supertab
source ~/.config/nvim/supertab.vim

" ======== airline
source ~/.config/nvim/airline.vim

" ======== tabular
source ~/.config/nvim/tabular.vim

" ======== wildfire
" source ~/.config/nvim/wildfire.vim

" ======== gitgutter
source ~/.config/nvim/gitgutter.vim

" ======== syntastic
source ~/.config/nvim/syntastic.vim

" ======= ctrlp
source ~/.config/nvim/ctrlp.vim

" ======= indent-line
source ~/.config/nvim/indent-line.vim

" ======== ack
source ~/.config/nvim/ack.vim

" ======== vim-go
source ~/.config/nvim/vim-go.vim

" ======== nerd-commenter 
source ~/.config/nvim/nerd-commenter.vim

" ======== ncm2
source ~/.config/nvim/ncm2.vim

" ======== easymotion
source ~/.config/nvim/easymotion.vim

" ======== short-key
source ~/.config/nvim/short-key.vim

" ======= PhpHelper ========= "
let g:phpBin='/usr/local/php/bin/php'
" Check php script {{{1
function! PhpChecker()
    let checkCommand = '!' . g:phpBin . ' -l %'
    exec expand( checkCommand )
endfunction | " 1 }}}

" Run php script {{{ 1
function! PhpRunner()
    let runCommand = '!' . g:phpBin . '  %'
    exec expand( runCommand )
endfunction | " 1 }}}

:autocmd FileType php noremap <F3> :call PhpChecker()<CR>
:autocmd FileType php noremap <F4> :call PhpRunner()<CR>

" ======= TagBar ========= "
" Config
let g:tagbar_autoclose=1
let g:tagbar_show_linenumbers=1
" Shortcut
nnoremap <F6> :TagbarToggle<CR>




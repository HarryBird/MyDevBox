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
set listchars=tab:\ ·,eol:¬
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
"
" Plugin "{{{
source ~/.config/nvim/Plugin.vim
" "}}}

" ColorScheme "{{{
colorscheme molokai
" "}}}

" Key mappings " {{{

" Ctrl+k/j/h/l   Jump between the split frame
nmap <C-k> <C-S-W>k
nmap <C-j> <C-S-W>j
nmap <C-h> <C-S-W>h
nmap <C-l> <C-S-W>l
" Close current frame·
" nnoremap <F12> :close<CR>
" display current frame only
" nnoremap <S-F12> :only<CR>

" ======= BufExplore ========= "
" Config
let g:bufExplorerDefaultHelp = 1
let g:bufExplorerDetailedHelp = 1
" Shortcut
nmap <F8> :BufExplorer <CR>

" ======= NERDTree ========= "
" Config
let NERDTreeChDirMode = 2
let NERDTreeWinSize = 30

let NERDTreeAutoCenter        = 1  " 窗口居中
let NERDTreeShowBookmarks     = 1  " 显示书签
let NERDChristmasTree         = 1  " 让树更好看
let NERDTreeCaseSensitiveSort = 1  " 让文件排列更有序
let NERDTreeChDirMode         = 1  " 改变tree目录的同时改变工程的目录
let NERDTreeHijackNetrw       = 1  " 当输入 [:e filename]不再显示netrw,而是显示nerdtree

if exists("loaded_nerd_tree")
        autocmd VimEnter * NERDTree
    endif
    "当打开vim且没有文件时自动打开NERDTree
    "autocmd vimenter * if !argc() | NERDTree | endif
"" 只剩 NERDTree时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Shortcut
nmap <F5>  :NERDTreeToggle<CR>

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

" ======= AirLine ========= "
let g:airline_theme="dark"
let g:airline_powerline_fonts =0 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '>'

if !exists('g:airline_symbols')
      let g:airline_symbols = {}
  endif
  let g:airline_symbols.space = "\ua0"


"let g:airline_section_a = airline#section#create(['%<', 'file', 'readonly'])
"let g:airline_section_b = airline#section#create_left(['mode', 'paste', 'iminsert'])
"let g:airline_section_c = airline#section#create(['hunks'])
"let g:airline_section_gutter = airline#section#create(['%=%y%m%r[%{&ff}]'])
""let g:airline_section_x = airline#section#create_right(['filetype'])
""let g:airline_section_y = '%y%m%r%=[%{&ff}]' "airline#section#create_right(['ffenc'])
"let g:airline_section_z = airline#section#create(['%(%l,%c%V%) %P'])
"let g:airline_section_warning = airline#section#create(['whitespace'])

" ======= vim-indent-guides ========= "
" Config
" let g:indent_guides_enable_on_vim_startup =0 
" let g:indent_guides_auto_colors = 0 "默认关闭
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=235
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=135
" Usage
" <Leader>ig  开启vim-indent
"
" ======= NERDTree ========= "
" Config
let NERDTreeChDirMode = 2 
let NERDTreeWinSize = 30
" Shortcut
nmap <F5>  :NERDTreeToggle<CR>

" ======= Ctrlp ========= "
" Config
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_working_path_mode = 'ra'
" Usage
"Once CtrlP is open:
"Press <F5> to purge the cache for the current directory to get new files, remove deleted files and apply new ignore options.
"Press <c-f> and <c-b> to cycle between modes.
"Press <c-d> to switch to filename only search instead of full path.
"Press <c-r> to switch to regexp mode.
"Use <c-j>, <c-k> or the arrow keys to navigate the result list.
"Use <c-t> or <c-v>, <c-x> to open the selected entry in a new tab or in a new split.
"Use <c-n>, <c-p> to select the next/previous string in the prompt's history.
"Use <c-y> to create a new file and its parent directories.
"Use <c-z> to mark/unmark multiple files and <c-o> to open them.

" ======= Surround ========= "
" Usage
" cs: 包围符号替换
" 'hello' => cs'" =>"hello"
" 'hello' => cs'<q> =><q>hello</q>
" <q>hello</q> => cst' => 'hello'
" ds: 去掉包围符号
" 'hello' => ds' => hello
" ys: 添加包围符号
" hello => ysiw' => 'hello'
" yss: 整行添加包围符号
" yS/ySS 单独一行并有缩进

" ======= NerdCommenter ========= "
" Usage
" <Leader>cc 注释一行
" <Leader>cu 取消注释一行
" <Leader>ca 切换注释模式 ／／ 或 /**／
" <Leader>cm 以block的最简方式注释一段代码
" <Leader>ci 以独立注释单行的方式 注释选中的每一行， 注释模式取决<Leader>ca
" <Leader>cs 以block的常规方式注释一段代码
" <Leader>cA 在行尾巴追加注释，注释模式取决于<Leader>ca

" ======= TagBar ========= "
" Config
let g:tagbar_autoclose=1
let g:tagbar_show_linenumbers=1
" Shortcut
nnoremap <F6> :TagbarToggle<CR>

" ======= EasyMotion ========= "
" Shortcut
map <Leader>mm <Plug>(easymotion-prefix)


" ======= Vim-Multiple-Cursors ========= "
" Shortcut
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'


" ======= syntastic ========= "
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0



"" ======= neocomplete ========= "
"
""Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
"" Disable AutoComplPop.
"let g:acp_enableAtStartup = 0
"" Use neocomplete.
"let g:neocomplete#enable_at_startup = 1
"" Use smartcase.
"let g:neocomplete#enable_smart_case = 1
"" Set minimum syntax keyword length.
"let g:neocomplete#sources#syntax#min_keyword_length = 3
"let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
"
"" Define dictionary.
"let g:neocomplete#sources#dictionary#dictionaries = {
"    \ 'default' : '',
"    \ 'vimshell' : $HOME.'/.vimshell_hist',
"    \ 'scheme' : $HOME.'/.gosh_completions'
"        \ }
"
"" Define keyword.
"if !exists('g:neocomplete#keyword_patterns')
"    let g:neocomplete#keyword_patterns = {}
"endif
"let g:neocomplete#keyword_patterns['default'] = '\h\w*'
"
"" Plugin key-mappings.
"inoremap <expr><C-g>     neocomplete#undo_completion()
"inoremap <expr><C-l>     neocomplete#complete_common_string()
"
"" Recommended key-mappings.
"" <CR>: close popup and save indent.
"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"function! s:my_cr_function()
"  return neocomplete#close_popup() . "\<CR>"
"  " For no inserting <CR> key.
"  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
"endfunction
"" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><C-y>  neocomplete#close_popup()
"inoremap <expr><C-e>  neocomplete#cancel_popup()
"" Close popup by <Space>.
""inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"
"
"" For cursor moving in insert mode(Not recommended)
""inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
""inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
""inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
""inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
"" Or set this.
""let g:neocomplete#enable_cursor_hold_i = 1
"" Or set this.
""let g:neocomplete#enable_insert_char_pre = 1
"
"" AutoComplPop like behavior.
""let g:neocomplete#enable_auto_select = 1
"
"" Shell like behavior(not recommended).
""set completeopt+=longest
""let g:neocomplete#enable_auto_select = 1
""let g:neocomplete#disable_auto_complete = 1
""inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
"
"" Enable omni completion.
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"
"" Enable heavy omni completion.
"if !exists('g:neocomplete#sources#omni#input_patterns')
"  let g:neocomplete#sources#omni#input_patterns = {}
"endif
""let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
""let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
""let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
"
"" For perlomni.vim setting.
"" https://github.com/c9s/perlomni.vim
"let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

" ======= ag ========= "
let g:ackprg = '/usr/local/Cellar/the_silver_searcher/0.28.0/bin/ag --nogroup --nocolor --column'
let g:ag_prg = '/usr/local/Cellar/the_silver_searcher/0.28.0/bin/ag --nogroup --nocolor --column'

" ======= indentLine ========= "
let g:indentLine_color_term =139 
let g:indentLine_char = '¦'

" ======= EditorConfig ========= "
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
let g:EditorConfig_exec_path = '/usr/local/bin/editorconfig'

" ======= YouCompleteMe ========= "
let g:python3_host_prog = '/usr/local/bin/python3'
let g:ycm_python_binary_path = '/usr/local/bin/python3'
let g:ycm_server_python_interpreter = '/usr/local/bin/python3'
let g:ycm_auto_trigger = 1
set completeopt=longest,menu    "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif "离开插入模式后自动关闭预览窗口
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"    "回车即选中当前项
"上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" :"\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

"youcompleteme  默认tab  s-tab 和自动补全冲突
"let g:ycm_key_list_select_completion=['<c-n>']
let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion=['<c-p>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示
"
let g:ycm_collect_identifiers_from_tags_files=1    " 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=2    "
"从第2个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0 " 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1   " 语法关键字补全
"nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
"nnoremap <leader>lo :lopen<CR>    "open locationlist
"noremap <leader>lc :lclose<CR>    "close locationlist
inoremap <leader><leader> <C-x><C-o>
""在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
""注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0

let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }
let g:ycm_autoclose_preview_window_after_completion=1

nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR> " 跳转到定义处

" "}}}



call plug#begin('~/.config/vim/plugged')
" https://github.com/junegunn/vim-plug

" Plug 'tomasr/molokai'
" Plug 'tomasiser/vim-code-dark'
" Plug 'nathanaelkane/vim-indent-guides'
" Plug 'tpope/vim-surround'
" Plug 'spf13/PIV'
" Plug 'terryma/vim-multiple-cursors'
" Plug 'rking/ag.vim'
" Plug 'CodeFalling/fcitx-vim-osx'
" Plug 'stephpy/vim-php-cs-fixer'
" Plug 'editorconfig/editorconfig-vim'
" Plug 'edkolev/promptline.vim'

" motion
Plug 'easymotion/vim-easymotion'

" vim buf 
Plug 'jlanzarotta/bufexplorer'

" tab 作为自动补全
Plug 'ervandew/supertab'

" 侧边栏文件选择器
Plug 'scrooloose/nerdtree'

" ctrl + p 文件快速查找
Plug 'ctrlpvim/ctrlp.vim'

" 代码注释
Plug 'preservim/nerdcommenter'

" 状态栏 airline 主题
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" 文本对齐
Plug 'godlygeek/tabular'

" 多光标选择器
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
" 文本快速选择
Plug 'gcmt/wildfire.vim'

" git diff 展示
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'

" 语法检查
Plug 'scrooloose/syntastic'

" ctrl+d / ctrl+n  滚动优化 
Plug 'yonchu/accelerated-smooth-scroll'

" 文本检索 quickfix 版本
Plug 'mileszs/ack.vim'

" 文本检索 独立窗口 版本
Plug 'dyng/ctrlsf.vim'

" git 工具
Plug 'tpope/vim-fugitive'

Plug 'majutsushi/tagbar'

" 缩进对齐线
Plug 'Yggdroot/indentLine'

" 颜色主题
Plug 'morhetz/gruvbox',

" 补全
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" GO
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" NCM2  https://github.com/ncm2/ncm2
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-tmux'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-syntax' | Plug 'Shougo/neco-syntax'

call plug#end()

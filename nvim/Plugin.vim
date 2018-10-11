call plug#begin('~/.vim/plugged')
" https://github.com/junegunn/vim-plug

Plug 'vim-scripts/bufexplorer.zip'
Plug 'ervandew/supertab'
Plug 'tomasr/molokai'
Plug 'tomasiser/vim-code-dark'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'spf13/PIV'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'godlygeek/tabular'
Plug 'terryma/vim-multiple-cursors'
Plug 'gcmt/wildfire.vim'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/syntastic'
Plug 'yonchu/accelerated-smooth-scroll'
Plug 'rking/ag.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'tpope/vim-fugitive'
Plug 'majutsushi/tagbar'
Plug 'edkolev/promptline.vim'
Plug 'mhinz/vim-signify'
" 缩进对齐线
Plug 'Yggdroot/indentLine'
Plug 'CodeFalling/fcitx-vim-osx'

Plug 'stephpy/vim-php-cs-fixer'
Plug 'editorconfig/editorconfig-vim'

" GO
Plug 'fatih/vim-go'
Plug 'vim-jp/vim-go-extra'
Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.vim/plugged/gocode/nvim/symlink.sh' }
Plug 'ncm2/ncm2-go'
Plug 'sebdah/vim-delve'

" NCM2  https://github.com/ncm2/ncm2
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-tmux'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-syntax' | Plug 'Shougo/neco-syntax'

call plug#end()

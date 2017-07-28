call plug#begin('~/.vim/plugged')
" https://github.com/junegunn/vim-plug

Plug 'vim-scripts/bufexplorer.zip'
Plug 'ervandew/supertab'
Plug 'tomasr/molokai'
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
" Plug 'Shougo/neocomplete.vim'
Plug 'rking/ag.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'tpope/vim-fugitive'
Plug 'majutsushi/tagbar'
Plug 'edkolev/promptline.vim'
Plug 'mhinz/vim-signify'
" 缩进对齐线
Plug 'Yggdroot/indentLine'
"Plug 'edkolev/tmuxline.vim'
Plug 'CodeFalling/fcitx-vim-osx'
"Plug 'Valloric/YouCompleteMe'
"Plug 'wkentaro/conque.vim'

Plug 'roxma/nvim-completion-manager'
"Plug 'roxma/nvim-cm-php-language-server',  {'do': 'composer install && composer run-script parse-stubs'}


" phpcomplete
"Plug 'shawncplus/phpcomplete.vim'
"Plug 'Shougo/vimproc.vim', {'do' : 'make'}
"Plug 'Shougo/unite.vim'
"Plug 'm2mdas/phpcomplete-extended'
"

Plug 'stephpy/vim-php-cs-fixer'
Plug 'editorconfig/editorconfig-vim'

call plug#end()

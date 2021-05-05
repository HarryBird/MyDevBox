" ======= NERDTree ========= "
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

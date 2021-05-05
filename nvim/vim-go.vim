" ======= vim-go ========= "
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
"let g:go_fmt_fail_silently = 1
"let g:go_addtags_transform = "camelcase"

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1

let g:go_def_mode = 'guru'
let g:go_def_use_buffer = 1
"let g:go_metalinter_disabled = ['errcheck']
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']

"let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
"let g:go_metalinter_autosave_enabled = ['errcheck']
"let g:go_metalinter_deadline = "5s"

"let g:go_auto_type_info = 1
"let g:go_auto_sameids = 1
"
"" disable all linters as that is taken care of by coc.nvim
let g:go_diagnostics_enabled = 0
let g:go_metalinter_enabled = []

" don't jump to errors after metalinter is invoked
let g:go_jump_to_error = 0

" run go imports on file save
let g:go_fmt_command = "goimports"

" automatically highlight variable your cursor is on
let g:go_auto_sameids = 0


autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)

autocmd FileType go nmap <F3>  :GoMetaLinter<CR>
autocmd filetype go inoremap <buffer> . .<C-x><C-o>

autocmd BufEnter *.go nmap <leader>i  <Plug>(go-info)
autocmd BufEnter *.go nmap <leader>ii  <Plug>(go-implements)
autocmd BufEnter *.go nmap <leader>ci  <Plug>(go-describe)
autocmd BufEnter *.go nmap <leader>cc  <Plug>(go-callers)
nmap <leader>cr <Plug>(coc-references)
nmap <C-a> <C-o>
nmap <C-d> <Plug>(coc-definition)

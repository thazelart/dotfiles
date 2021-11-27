" ____  _
"|  _ \| |_   _  __ _
"| |_) | | | | |/ _` |
"|  __/| | |_| | (_| |
"|_|   |_|\__,_|\__, |
"               |___/
call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', {'build': {'unix': 'make'}}
Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'hashivim/vim-terraform'
Plug 'psf/black'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'andrewstuart/vim-kubernetes'
Plug 'sheerun/vim-polyglot'
Plug 'thazelart/figban.nvim'

" let dev = '/home/thazelart/temp/'
" Plug dev . 'thazelart/figban.nvim'
call plug#end()


"  ____ _       _           _
" / ___| | ___ | |__   __ _| |
"| |  _| |/ _ \| '_ \ / _` | |
"| |_| | | (_) | |_) | (_| | |
" \____|_|\___/|_.__/ \__,_|_|
"
set number
set relativenumber
syntax on
syntax enable
let g:airline_powerline_fonts = 1
autocmd FileType * unlet! g:airline#extensions#whitespace#checks
let g:airline_theme='luna'
" remove trailing spaces
autocmd BufWritePre * :%s/\s\+$//e
"let g:figban_fontstyle='shadow'

" _   _ _ _   _ ____        _
"| | | | | |_(_) ___| _ __ (_)_ __  ___
"| | | | | __| \___ \| '_ \| | '_ \/ __|
"| |_| | | |_| |___) | | | | | |_) \__ \
" \___/|_|\__|_|____/|_| |_|_| .__/|___/
"                            |_|
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsListSnippets="<c-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"  ____       _
" / ___| ___ | | __ _ _ __   __ _
"| |  _ / _ \| |/ _` | '_ \ / _` |
"| |_| | (_) | | (_| | | | | (_| |
" \____|\___/|_|\__,_|_| |_|\__, |
"                           |___/
"    Indentation
au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4
"    Highlighting
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_auto_sameids = 1
"    Code amelioration
let g:go_fmt_command = "goimports"
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠' " Enable integration with airline.
let g:airline#extensions#ale#enabled = 1
let g:deoplete#enable_at_startup = 1
"    On save
let g:terraform_fmt_on_save=1

" ____        _   _
"|  _ \ _   _| |_| |__   ___  _ __
"| |_) | | | | __| '_ \ / _ \| '_ \
"|  __/| |_| | |_| | | | (_) | | | |
"|_|    \__, |\__|_| |_|\___/|_| |_|
"       |___/
"    Indentation
au FileType python set expandtab
au FileType python set shiftwidth=4
au FileType python set softtabstop=4
au FileType python set tabstop=4
"    Highlighting
"    Code amelioration
"    On save
autocmd BufWritePost *.py execute ':Black'

" _____                    __
"|_   _|__ _ __ _ __ __ _ / _| ___  _ __ _ __ ___
"  | |/ _ \ '__| '__/ _` | |_ / _ \| '__| '_ ` _ \
"  | |  __/ |  | | | (_| |  _| (_) | |  | | | | | |
"  |_|\___|_|  |_|  \__,_|_|  \___/|_|  |_| |_| |_|
"
"    On save
let g:terraform_fmt_on_save=1

au FileType yaml set expandtab

"__   __              _
"\ \ / /_ _ _ __ ___ | |
" \ V / _` | '_ ` _ \| |
"  | | (_| | | | | | | |
"  |_|\__,_|_| |_| |_|_|
"
au FileType yaml set shiftwidth=2
au FileType yaml set softtabstop=2
au FileType yaml set tabstop=2
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

"     _
"    | |___  ___  _ __
" _  | / __|/ _ \| '_ \
"| |_| \__ \ (_) | | | |
" \___/|___/\___/|_| |_|
"
au FileType json set expandtab
au FileType json set shiftwidth=2
au FileType json set softtabstop=2
au FileType json set tabstop=2

" __  __            _       _
"|  \/  | __ _ _ __| | ____| | _____      ___ __
"| |\/| |/ _` | '__| |/ / _` |/ _ \ \ /\ / / '_ \
"| |  | | (_| | |  |   < (_| | (_) \ V  V /| | | |
"|_|  |_|\__,_|_|  |_|\_\__,_|\___/ \_/\_/ |_| |_|
"
au FileType markdown setlocal spell
au FileType markdown set expandtab
au FileType markdown set shiftwidth=4
au FileType markdown set softtabstop=4
au FileType markdown set tabstop=4
au FileType markdown set syntax=markdown
au FileType markdown set nospell

" ____            _
"| __ )  __ _ ___| |__
"|  _ \ / _` / __| '_ \
"| |_) | (_| \__ \ | | |
"|____/ \__,_|___/_| |_|
"
au FileType sh set noexpandtab
au FileType sh set shiftwidth=2
au FileType sh set softtabstop=2
au FileType sh set tabstop=2


"  ____
" / ___|_ __ ___   _____   ___   _
"| |  _| '__/ _ \ / _ \ \ / / | | |
"| |_| | | | (_) | (_) \ V /| |_| |
" \____|_|  \___/ \___/ \_/  \__, |
"                            |___/
au BufNewFile,BufRead *.groovy setf groovy
au BufNewFile,BufRead Jenkinsfile setf groovy

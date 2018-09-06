set nu relativenumber

let mapleader=" "

call plug#begin('~/.local/share/nvim/plugged')
    Plug 'Shougo/deoplete.nvim'
    Plug 'zchee/deoplete-jedi'
    Plug 'zchee/deoplete-clang'
    Plug 'sheerun/vim-polyglot'
    Plug 'rafi/awesome-vim-colorschemes'
    Plug 'jaxbot/github-issues.vim'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-surround'
    Plug 'airblade/vim-gitgutter'
    Plug 'vim-syntastic/syntastic'
    Plug 'Yggdroot/indentLine'
call plug#end()

syntax on
noremap <silent><leader>ev :vsplit $MYVIMRC<CR>
noremap <silent><leader>sv :so $MYVIMRC<CR>

vnoremap <leader>y "+y
noremap <leader>p "+p

colo onedark
"deoplete
let g:deoplete#enable_at_startup=1

nmap <silent><leader>Q :tabclose<CR>
nmap <silent><leader>W :tabnew<CR>
nmap <silent><F3> :noh<CR>

nmap <leader>q <C-W>q

set hidden autoindent modeline showcmd
set wildignore=*.swp,*.bak,*.pyc,*.class,*.o
set ts=4 expandtab sw=4 tw=120
set bg=dark
set foldmethod=indent
set foldlevel=99
set smartcase
set backspace=indent,eol,start
set shortmess+=I
set encoding=utf-8
set fileencoding=utf-8
"set list
"set lcs=tab:\|\ 

"statusbar
set statusline=%f
set statusline+=%m
set statusline+=%=
set statusline+=%0*\[%{mode()}]
set statusline+=\ Current:\ 
set statusline+=%l
set statusline+=/
set statusline+=Total:\ 
set statusline+=%L
set statusline+=%{FugitiveStatusline()}

let g:python_host_prog='/usr/bin/python2'
let g:python3_host_prog='/usr/bin/python3'

"clean Registers
command! WipeReg for i in range(34,255) | silent call setreg(nr2char(i), []) | endfor


nmap <silent><leader>v :vsplit<CR>
nmap <silent><leader>s :split<CR>

nmap <leader>l <C-W>l
nmap <leader>h <C-W>h
nmap <leader>k <C-W>k
nmap <leader>j <C-W>j

nmap <Up> <C-W>+
nmap <Down> <C-W>-
nmap <Left> <C-W><
nmap <Right> <C-W>>
"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"identline
let g:indentLine_char="|"
"fugitive

let g:github_upstream_issues=1

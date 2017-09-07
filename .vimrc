map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

execute pathogen#infect()

set nocompatible
set title
set number
set ruler
set wrap
set ignorecase
set smartcase
set incsearch
set hlsearch
set hidden
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

au BufRead,BufNewFile *.twig set filetype=htmljinja
au BufRead,BufNewFile *.ejs set filetype=htmljinja
au BufRead,BufNewFile *.js set tabstop=2
au BufRead,BufNewFile *.js set shiftwidth=2
au BufRead,BufNewFile *.js set softtabstop=2
au BufRead,BufNewFile *.html set tabstop=2
au BufRead,BufNewFile *.html set shiftwidth=2
au BufRead,BufNewFile *.html set softtabstop=2
au BufRead,BufNewFile *.blade.php set tabstop=2
au BufRead,BufNewFile *.blade.php set shiftwidth=2
au BufRead,BufNewFile *.blade.php set softtabstop=2

let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'htmljinja' : 1,
    \}

let mapleader = ","
let g:ackprg="ack -H --nocolor --nogroup --column"
let g:ctrlp_map = '<leader>c'
let g:ctrlp_user_command = 'find %s -type f'

nmap <leader>j mA:Ack<space>
nmap <leader>ja mA:Ack "<C-r>=expand("<cword>")<cr>"
nmap <leader>jA mA:Ack "<C-r>=expand("<cWord>")<cr>"

set backspace=indent,eol,start

au BufRead,BufNewFile *.twig set filetype=htmljinja

syntax enable
set background=dark
"Realy ugly
"colorscheme solarized

filetype on
filetype plugin on
filetype indent on
highlight ExtraWhitespace ctermbg=yellow

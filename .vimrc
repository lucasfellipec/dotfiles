" Set leader key to space
let mapleader = " "

" File explorer
nnoremap <leader>pv :Ex<CR>

" Window navigation
nnoremap <leader>h <C-w>h
nnoremap <leader>l <C-w>l

" Keep cursor centered for various operations
nnoremap J mzJ`z
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" Move selected lines up and down in visual mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Keep selection after indent
vnoremap > >gv
vnoremap < <gv

" Paste over without yanking the replaced text
xnoremap <leader>p "_dP

" Copy to system clipboard (credit: asbjornHaland)
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y "+Y

" Search and replace word under cursor
nnoremap <leader>s :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>

inoremap <C-c> <Esc>

set belloff=all

set autoindent
set number
set relativenumber
set tabstop=2
set shiftwidth=2
set expandtab

set nohlsearch
set incsearch

let g:netrw_browse_split = 0
let g:netrw_banner = 0
let g:netrw_winsize = 25

nnoremap <C-k> :cnext<CR>zz
nnoremap <C-j> :cprev<CR>zz
nnoremap <leader>k :lnext<CR>zz
nnoremap <leader>j :lprev<CR>zz

" Remove trailing whitespaces before saving
augroup RemoveTrailingWhitespace
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e
augroup END

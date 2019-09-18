" Set the Leader
let mapleader = "\<Space>"

" Set local leader 
let maplocalleader = "\<Space>"

" Show Line Number
set number

" Status line
set laststatus=2
set ruler

" Show relative line numbers
set norelativenumber

" Support for 256-color scheme?
set termguicolors

" Indentation 
set autoindent
set smartindent

" Tabs and spaces
" Tabstop=8 -> we still want tabs to LOOK different thatn spaces. So we keep
" tabstop at its default value of 8
" softtabstop=0 -> disable this feature partly because i don't really understand
" it.
" shiftwidth=4 -> This is the value used to indent. It will also be used the
" <TAB> character when the smarttab option is on.
" expandtab -> Tab characters get converted to spaces.
" smarttab -> Inserting a tab in insert mode uses shiftwidth option instead of
" tabstop.
" See https://stackoverflow.com/a/1878983
set tabstop=8
set softtabstop=0
set shiftwidth=4
set expandtab
set smarttab

" Use the more sane j, k, l, ; keys to navigate
noremap ; l 
noremap l k
noremap k j
noremap j h

" Also perform the same mapping for normal, terminal and insert mode, except
" using Alt.
nnoremap <C-m>; <C-w>l
nnoremap <C-m>l <C-w>k
nnoremap <C-m>k <C-w>j
nnoremap <C-m>j <C-w>h

" Window Resizing
nnoremap <leader>ih :resize +15<cr>
nnoremap <leader>dh :resize -15<cr>
nnoremap <leader>iw :vertical :resize +15<cr>
nnoremap <leader>dw :vertical :resize -15<cr>

" Window layout
noremap <C-w>; <C-w>L
noremap <C-w>l <C-w>K
noremap <C-w>k <C-w>J
noremap <C-w>j <C-w>H

" Map the - key to: Delete the current line, then paste it below the one we're
" on now. 
nnoremap <leader>- ddp

" Same as above, except the other way around
" We kill the line, go up one and put it before the cursor. Since the line
" kill has a carriage return after it, it will push down whatever is in that
" line.
nnoremap <leader>_ ddkP

" Open new line without going into insert mode
nnoremap <leader>o o<esc>k
nnoremap <leader>O O<esc>j

" Escape into normal mode by typing kl
" Then disable the <esc> key in Input mode.
inoremap <C-c> <esc>
inoremap <esc> <nop>

" Also change the omni key for ft_sql so it doesn't clash
let g:ftplugin_sql_omni_key = '<C-j>'


" Buffer Navigation
" - Switch to buffer
nnoremap <leader>b :buffers<cr>:buffer<space>

" Open the .vimrc flie from anywhere in normal mode
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" Source the .vimrc file from anywhere in normal mode
nnoremap <leader>sv :source $MYVIMRC<cr>

" Save - typing :w is not the easiest.
" Disable :w to avoid using it.
nnoremap <leader>ww :w<cr>

"Exit terminal mode
tnoremap <Esc> <C-\><C-n>

augroup python_files
    "Autocommands for python
    autocmd!
    " Enable folding for python files
    autocmd FileType python :setlocal foldmethod=indent
    autocmd FileType python :setlocal foldlevel=99
    " PEP 8 tab/indentation
    autocmd FileType python setlocal tabstop=4
    autocmd FileType python setlocal softtabstop=4
    autocmd FileType python setlocal shiftwidth=4
    autocmd FileType python setlocal textwidth=79
    autocmd FileType python setlocal expandtab
    autocmd FileType python setlocal autoindent
    autocmd FileType python setlocal fileformat=unix
augroup END

" Status Line Settings
set noshowmode


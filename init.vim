" Set the Leader
let mapleader = "\<Space>"

" Set local leader 
let maplocalleader = "\<Space>"

" Plugins: vim-plug
call plug#begin('~/.local/share/nvim/plugged')
Plug 'rust-lang/rust.vim'
Plug 'PProvost/vim-ps1'
Plug 'morhetz/gruvbox'
Plug 'maciakl/vim-neatstatus'
call plug#end()

" Show Line Number
set number

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
tnoremap <A-;> <C-\><C-N><C-w>l
tnoremap <A-l> <C-\><C-N><C-w>k
tnoremap <A-k> <C-\><C-N><C-w>j
tnoremap <A-j> <C-\><C-N><C-w>h
inoremap <A-;> <C-\><C-N><C-w>l
inoremap <A-l> <C-\><C-N><C-w>k
inoremap <A-k> <C-\><C-N><C-w>j
inoremap <A-j> <C-\><C-N><C-w>h
nnoremap <A-;> <C-w>l
nnoremap <A-l> <C-w>k
nnoremap <A-k> <C-w>j
nnoremap <A-j> <C-w>h

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

" Escape into normal mode by typing kl
" Then disable the <esc> key in Input mode.
inoremap <C-c> <esc>
inoremap <esc> <nop>

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

" Autocommands
" Set text width when we open a new text file.
autocmd BufNewFile *.txt :setlocal textwidth=70 
" Enter Terminal-mode when we open a terminal window
autocmd TermOpen * startinsert

" Theme settings
colorscheme gruvbox 

" Status Line Settings
set noshowmode

" Directory Listing Settings
" These were suggested form the :help netrw
set nocp
filetype plugin indent on
" Remove the banner
let g:netrw_banner = 0
" Change the list style to tree
let g:netrw_liststyle = 4
" Open Files In a new vertical split
let g:netrw_browse_split = 2
" Set the width of the explorer
let g:netrw_winsize = 25
" Shorter mapping for opening explorer
nnoremap :vex :Vexplore

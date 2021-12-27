" Ignore case when searching
set smartcase
" Highlight search results
set hlsearch
" Don't redraw while executing macros (increases performance)
set lazyredraw
" For regex support
set magic
" Show matching brackets
set showmatch
" Enable syntax highlighting
syntax enable

colorscheme pablo
set background=dark

set encoding=utf8

" Use unix as the standard file type
set ffs=unix,dos,mac

" Turn file backup off given that most stuff is versioned in git
set nobackup
set nowb
"set noswapfile " What if the PC turns off unexpectedly or I lose remote conn.?

" Use spaces instead of tabs
set expandtab
set smarttab
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 120 characters
set lbr
set tw=120

set ai " Autoindent
set si " Smart indent
set wrap " Wrap lines

" Always show the status line
set laststatus=2


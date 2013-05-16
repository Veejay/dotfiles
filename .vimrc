set cino=t0

filetype plugin indent on
syntax on
let mapleader = ","
map gf :tabnew <cfile><CR>

" Go
set rtp+=$GOROOT/misc/vim
filetype plugin on

" Awesome color scheme
colorscheme molokai 

" No need to indent too deeply, the subtler, the nicer
set tabstop=2
set shiftwidth=2

" Let's get wild
set autowrite
set noswapfile

" JUST SHUT THE FUCK UP ALREADY JESUS
set vb

" Remapping bufferprevious and buffernext to nice key combos
nmap <silent> <C-Left> :bp<CR>
nmap <silent> <C-Right> :bn<CR>

" Show matching parenthesis for a short period of time
set showmatch
set expandtab

"Leave 2 lines before cursor and last line
set scrolloff=2

" Status line
set laststatus=2
set statusline=%f\ %m%r%h%w\ %y%=(%{&ff})\ [%l/%L\ (%p%%)\ -\ %c]

" Remove toolbar
if has("gui_running")
  set guioptions=egmrt
endif

au BufRead,BufNewFile *.ru setfiletype ruby

call pathogen#infect()

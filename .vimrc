" This must be first, because it changes other options as a side effect.
set nocompatible
set t_Co=256
" colorscheme xoria256

" Set to auto read when a file is changed from the outside
set autoread


" With a map leader it's possible to do extra key combinations
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap s :w!<cr>

" Map escape to jj
:imap jj <Esc> 

" :W sudo saves the file 
" " (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

" Turn on the WiLd menu
set wildmenu


"" Always show current position
set ruler

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase
"
" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 


nnoremap <leader>, :noh<CR><CR>

" Switch syntax highlighting on
syntax on

" Blink cursor on error instead of beeping (grr)
 set visualbell

 " Encoding
 set encoding=utf-8

 " Whitespace
 set wrap
 set textwidth=79
 set formatoptions=tcqrn1
 set tabstop=2
 set shiftwidth=4
 set softtabstop=2
 set expandtab
 set noshiftround

 
" set the runtime path to include Vundle and initialize
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'Townk/vim-autoclose'
Plugin '2072/PHP-Indenting-for-VIm'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'mattn/emmet-vim'
call vundle#end()            " required

filetype plugin indent on    " required

let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/vendor

map <Enter> <Plug>(wildfire-fuel)
vmap <C-Enter> <Plug>(wildfire-water)
let g:wildfire_objects = ["i'", 'i"', "i)", "i]", "i}", "ip", "it"]


" Auto indenting is just so nice
set autoindent
set smartindent
map <leader>m :NERDTreeToggle<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Syntastic
let g:syntastic_php_checkers=['php', 'phpcs']
let g:syntastic_php_phpcs_args='--standard=PSR2 -n'

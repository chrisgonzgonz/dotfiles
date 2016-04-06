" ########### Vundle #########################
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

" All of your Plugins must be added before the following line

Plugin 'pangloss/vim-javascript'
Plugin 'moll/vim-node'
Plugin 'scrooloose/nerdtree'
Plugin 'tomtom/tcomment_vim'
Plugin 'ervandew/supertab'

call vundle#end()            " required
filetype plugin indent on    " required

"######## Configs
" Syntax Highlighting
syntax enable

" Line numbers
set number

" yank to system clipboard by default
set clipboard+=unnamed

" Easy commenting
nnoremap // :TComment<CR>
vnoremap //ervandew/supertab :TComment<CR>

" File/Directory completion
set wildmode=longest,list,full
set wildmenu

" Use only current file to autocomplete from tags
" set complete=.,t
set complete=.,w,b,u,t,i

" Searching / moving
" nnoremap / /\v
" vnoremap / /\v
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
" turn search highlight off
nnoremap <leader><space> :noh<cr> 
" search (forwards)
nmap <space> /
" " search (backwards)
map <c-space> ?

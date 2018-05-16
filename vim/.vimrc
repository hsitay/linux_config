
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle
" instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline'
Plugin 'vim-colors-solarized'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'vivien/vim-linux-coding-style'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" ----------------------------------
"
" execute pathogen#infect()

au FileType gitcommit set tw=72

syntax enable
syntax spell toplevel
set spell spelllang=en_us

set background=dark
colorscheme solarized

filetype plugin indent on
"set tabstop=2
"set softtabstop=2
"set shiftwidth=2
set expandtab

set modeline

"set number
set cursorline
filetype indent on
set wildmenu
set showmatch
set incsearch
set hlsearch

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

"set laststatus=2
"
"autocmd FileType python setlocal expandtab shiftwidth=2 softtabstop=2

autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<
" Enable folding
"set foldmethod=indent
"set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

" Flag whitespace
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"let g:ycm_autoclose_preview_window_after_completion=1
"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let python_highlight_all=1
syntax on

set directory=$HOME/.vim/swapfiles//
set backupdir=$HOME/.vim/backups//

"let &colorcolumn="80"
set colorcolumn=80
highlight ColorColumn ctermbg=10

autocmd BufWritePre *.h,*.go,*.py,*.c,*.rst %s/\s\+$//e

autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
autocmd BufNewFile,BufRead *.py setlocal expandtab tabstop=4 shiftwidth=4

let g:linuxsty_patterns = [ "/cpu/kernel/", "/cpu/bootloader" ]

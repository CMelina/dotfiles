set nocompatible              " required
filetype off                  " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Step 4: Badwolf Color Scheme
Plugin 'sjl/badwolf'

" Step 5: Fugitive Improvement Plugin
Plugin 'tpope/vim-fugitive'

call vundle#end()            " required
filetype plugin indent on    " required

" Step 6: Set colorscheme
syntax enable
colorscheme badwolf

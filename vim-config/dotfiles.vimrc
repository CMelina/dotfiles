set nocompatible
filetype off

" sets the runtime path to include Vundle and initialization
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle management
Plugin 'VundleVim/Vundle.vim'

" Badwolf theme
Plugin 'sjl/badwolf'

" plugin
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on

" set theme
syntax enable
colorscheme badwolf

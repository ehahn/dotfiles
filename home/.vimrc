set incsearch
set hlsearch
set wildmenu
set smartcase
set ignorecase
set noerrorbells vb t_vb=
"set formatoptions=croql
let mapleader = ","
set mouse=a
set sw=4 sts=4 expandtab
set omnifunc=syntaxcomplete#Complete
syntax enable

filetype off
set rtp+=~/.vim/bundle/vundle/
set rtp+=~/.vim/bundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-dispatch'
"Bundle 'kana/vim-textobj-user'
"Bundle 'rbonvall/vim-textobj-latex'
Bundle 'LaTeX-Box-Team/LaTeX-Box'

Bundle 'vimoutliner/vimoutliner'

Bundle 'vim-auto-save'
let g:auto_save = 0
let g:auto_save_no_updatetime = 1
"set autowrite
Bundle 'kien/ctrlp.vim'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_root_markers = ['.ctrlp']

if version >= 703
    "Bundle 'Valloric/YouCompleteMe'
endif
"undle 'scrooloose/syntastic'

" Bundle 'alfredodeza/coveragepy.vim'
Bundle 'python_fold'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-eunuch'
Bundle 'tpope/vim-commentary'

Bundle 'godlygeek/tabular'

Bundle 'xolox/vim-easytags'
Bundle 'xolox/vim-misc'
Bundle 'dhruvasagar/vim-table-mode'

filetype plugin indent on

augroup templates
	au!
	" read in templates files
	autocmd BufNewFile *.* silent! execute '0r ~/.vim/templates/skeleton.'.expand("<afile>:e")
augroup END

set number "relativenumber

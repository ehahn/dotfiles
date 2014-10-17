set incsearch
set hlsearch
set wildmenu
set smartcase
set ignorecase
set noerrorbells vb t_vb=
"set formatoptions=croql
"let mapleader = ","
set mouse=a
set sw=4 sts=4 expandtab
set omnifunc=syntaxcomplete#Complete
set nofoldenable
syntax enable

filetype off
set rtp+=~/.vim/bundle/vundle/
set rtp+=~/.vim/bundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-dispatch'
Bundle 'kana/vim-textobj-user'
Bundle 'rbonvall/vim-textobj-latex'
"let g:Tex_DefaultTargetFormat = 'pdf'
"Bundle 'git://git.code.sf.net/p/vim-latex/vim-latex'

Bundle 'vimoutliner/vimoutliner'

Bundle 'msanders/snipmate.vim'

Bundle 'vim-auto-save'
let g:auto_save = 0
let g:auto_save_no_updatetime = 1
"set autowrite
Bundle 'kien/ctrlp.vim'

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

Bundle 'jpalardy/vim-slime'
let g:slime_target="tmux"
let g:slime_python_ipython = 1
let g:slime_no_mappings = 1
xmap <Leader>s <Plug>SlimeRegionSend
nmap <Leader>c <Plug>SlimeConfig

Bundle 'kshenoy/vim-signature'

Bundle 'altercation/vim-colors-solarized'
colorscheme solarized
"set t_Co=16 " TODO

filetype plugin indent on

augroup templates
	au!
	" read in templates files
	autocmd BufNewFile *.* silent! execute '0r ~/.vim/templates/skeleton.'.expand("<afile>:e")
augroup END

set number "relativenumber
syntax on

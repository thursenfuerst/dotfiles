syntax on
filetype plugin indent on
set history=700
set autoread

set ignorecase
set smartcase
set hlsearch
set incsearch
set magic

set encoding=utf8
set ffs=unix,dos,mac

set nocompatible

set smarttab
set tabstop=4
set shiftwidth=4
set expandtab

highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()


" Allow saving of files with elevated rights when forgetetting to start vim
" with sudo
cmap w!! w !sudo tee > /dev/null %

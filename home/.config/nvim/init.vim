" Dein Scripts-----------------------------
if &compatible
  set nocompatible " Be iMproved
endif

" Required:
set runtimepath+=~/.local/share/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.local/share/dein')
  call dein#begin('~/.local/share/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.local/share/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  call dein#add('vim-airline/vim-airline')
  call dein#add('cespare/vim-toml')
  call dein#add('vim-airline/vim-airline-themes')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup
if dein#check_install()
  call dein#install()
endif
"End dein Scripts-------------------------


set directory=${XDG_CACHE_DIR}/vim/
set number
set colorcolumn=101
if !has('nvim') " Do this if regular vim
  set viminfo+=n~/.cache/vim/history
endif

let g:airline_theme='base16' " TODO: Clone theme to remove ugly grey background


highlight ColorColumn ctermbg=8
highlight LineNr ctermfg=7

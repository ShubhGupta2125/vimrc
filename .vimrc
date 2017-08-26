filetype on
syntax on
colorscheme cobalt
set mouse =a
set number
set hidden
set history=100
filetype indent on
set shiftwidth=4
set expandtab
set tabstop=4
set smartindent
set autoindent
set incsearch       " search as characters are entered
set hlsearch        " highlight matches

let mapleader=","       " leader is comma

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

set showmatch       " highlight matching [{()}]


"Setting a cursorline
set cursorline

"GUI for TAB completion
set wildmenu

"Silver Searcher for vim
" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
" Silver Searcher function ends

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

nnoremap <leader>a :Ag



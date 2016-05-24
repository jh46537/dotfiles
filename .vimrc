" set timeout
set timeoutlen=1000 ttimeoutlen=0

" enable mouse
set mouse=a

" disable line wrapping
set nowrap

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" enable syntax highlighting
syntax on

" show line numbers relative to current line
set number
"set relativenumber

" make good tabs
set shiftwidth=4
set softtabstop=4
set expandtab
set cindent

" enable replace of word under cursor (shortcut \s)
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

" change Y behavior to yank from cursor to end of line
nnoremap Y y$

" trick tmux into using vim background color
set t_ut=
" set 256 colors
set t_Co=256
" make vim pretty
colorscheme molokai

" highlight cursor
set cursorline

" buffer lines when scrolling
set scrolloff=2

" change spell check color
hi clear SpellBad
hi SpellBad cterm=bold,italic ctermfg=red
hi clear SpellCap
hi SpellCap cterm=bold,italic ctermfg=blue

" disable highlighting during search
" highlight Search cterm=NONE ctermfg=NONE ctermbg=NONE

" search
set incsearch
set hlsearch

" splits
set splitbelow
set splitright

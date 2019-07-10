" set timeout
set timeoutlen=250 ttimeoutlen=0
set updatetime=250

" set leader
map <space> <leader>
set showcmd

" escape mappings
nnoremap <tab><tab> <esc>
vnoremap <tab><tab> <esc>gV
onoremap <tab><tab> <esc>
inoremap <tab><tab> <esc>`^

" disable ex mode
nnoremap Q <nop>
" leader things
" highlighting toggle
nnoremap <leader>/ :nohlsearch<cr>
" search for visually selected text
vnoremap <leader>S y/<C-R>"<CR>
" enable replace of search term
nnoremap <leader>R :%s//
" ignore case toggle
nnoremap <leader>i :set ignorecase!<cr>
" spell check toggle
nnoremap <leader>p :set spell!<cr>
" line number toggle
nnoremap <leader>n :set number!<cr>
" line wrap toggle
nnoremap <leader>r :set wrap!<cr>
" color column toggle
function! g:Toggle_colorcolumn()
    if &colorcolumn != ''
        set colorcolumn=
    else
        let &colorcolumn="81,".join(range(121,999),",")
    endif
endfunction
nnoremap <leader>c :call g:Toggle_colorcolumn()<cr>
" reindent
nnoremap <leader>= mzgg=G`z
" write
nnoremap <leader>w :w<cr>
nnoremap <leader>W :wa<cr>
" quit
nnoremap <leader>q :q<cr>
nnoremap <leader>Q :qa<cr>

" auto reload
set autoread
autocmd CursorHold * checktime

" colorscheme
colorscheme molokai

" trick tmux into using vim background color
set t_ut=
" set 256 colors
set t_Co=256

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" increase number of tabs"
set tabpagemax=100

" enable filetype plugins
filetype plugin on

" status line
set laststatus=2

" enable mouse
set mouse=a

" set backspace-able characters
set backspace=indent,eol,start

" better autocompletion
set wildmenu
set wildmode=longest:full,full

" enable syntax highlighting
syntax on

" improve block matching
runtime macros/matchit.vim

" disable line wrapping
set nowrap

" show line numbers relative to current line
set number
"set relativenumber

" make good tabs
set shiftwidth=4
set softtabstop=4
set expandtab
set cindent

" highlight cursor
set cursorline

" buffer lines when scrolling
set scrolloff=2

" change spell check color
hi clear SpellBad
hi SpellBad     ctermfg=red ctermbg=232 cterm=bold,reverse
hi SpellCap     ctermfg=red ctermbg=232 cterm=bold,reverse
hi SpellLocal   ctermfg=red ctermbg=232 cterm=bold,reverse
hi SpellRare    ctermfg=red ctermbg=232 cterm=bold,reverse

" search
set incsearch
set hlsearch

" splits
set splitbelow
set splitright

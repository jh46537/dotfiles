source /usr/share/vim/vimrc
let &runtimepath.=',~/alex/dotfiles/.vim'

" set timeout
set timeoutlen=250 ttimeoutlen=0

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
nnoremap <leader>/ :noh<cr>
" enable replace of search term
nnoremap <leader>r :%s//
" spell check toggle
nnoremap <leader>p :set spell!<cr>
" line number toggle
nnoremap <leader>n :set nu!<cr>
" color column toggle
function! g:Toggle_colorcolumn()
    if &colorcolumn != ''
        set colorcolumn=
    else
        let &colorcolumn="81,".join(range(121,999),",")
    endif
endfunction
nnoremap <leader>c :call g:Toggle_colorcolumn()<cr>
" write
nnoremap <leader>w :w<cr>
nnoremap <leader>W :wa<cr>
" quit
nnoremap <leader>q :q<cr>
nnoremap <leader>Q :qa<cr>

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

" status line
set laststatus=2

" enable mouse
set mouse=a

" better autocompletion
set wildmenu
set wildmode=longest:full,full

" enable syntax highlighting
syntax on

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

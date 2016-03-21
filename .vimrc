" Author: Vladislav Belov
" Last update: 22.03.2016

" User interface
syntax on
set nocompatible
set scrolloff=3
set wrap
set linebreak
set mouse=a
set mousehide
set showcmd
set matchpairs+=<:>
set showmatch
set autoread
set t_Co=256
set confirm
set number
set wildmenu
set lazyredraw
set backspace=indent,eol,start

" Search
set ignorecase
set smartcase
set incsearch
set nohlsearch

" Cursor line
set cursorline

" Status line
set statusline=%F>%{&fileencoding}>%Y
set statusline+=%=\ [%v:%l/%L,\ %p%%]
set statusline+=\ %{strftime(\"%d.%m.%Y\ %H:%M\")}
set laststatus=2

" Highlight
set list
set listchars=tab:>-,trail:-

" Backup
set backup
set title
set history=256
set undolevels=8192
set backupdir=~/.vimtmp
set directory=~/.vimtmp
set writebackup

" Files
set ffs=unix,dos,mac
set fencs=utf-8,cp1251

" Projects
set makeprg=make
" C++
au FileType cpp setlocal makeprg=g++\ -o\ %:p:r\ %:p\ -std=c++11\ -O2\ -Wall\ -Wextra
au FileType cpp noremap <F9> :make<cr><cr>:botright cwindow<cr>
au FileType cpp noremap <buffer> <F10> :!%:p:r<cr>

" Tabs
set shiftwidth=4
set tabstop=4
set softtabstop=4
set autoindent
set expandtab
set smartindent

" Key maps
nmap <F2> :w<cr>
vmap <F2> <esc>:w<cr>i
imap <F2> <esc>:w<cr>i
nmap <F9> :make<cr>
imap <C-d> <esc>yypi
inoremap <C-space> <C-x><C-o>
vnoremap <C-X> "+x
vnoremap <C-C> "+y
map <C-V>      "+gP
noremap <C-Z> u
inoremap <C-Z> <C-O>u
noremap <C-Y> <C-R>
inoremap <C-Y> <C-O><C-R>
noremap <C-O> :Ex<cr>
inoremap <C-O> <esc>:Ex<cr>
vnoremap <C-O> <esc>:Ex<cr>
inoremap <C-S> <F2>
vnoremap <C-S> <F2>
noremap <C-S> <F2>

if has("gui_running")
    " GUI colors
    hi CursorLine  gui=NONE guibg=#262626
    hi StatusLine  gui=reverse guifg=#5f0000 guibg=#d7ffd7
    hi Normal      gui=NONE guibg=#080808 guifg=#ffffd7
    hi Comment     gui=NONE guibg=NONE guifg=#4e4e4e
    hi Type        gui=NONE guibg=NONE guifg=#d78700
    hi Statement   gui=bold guibg=NONE guifg=#d7af5f
    hi PreProc     gui=NONE guibg=NONE guifg=#ffaf5f
    hi Constant    gui=NONE guibg=NONE guifg=#ffff87
    hi MatchParen  gui=NONE guibg=#875f00 guifg=#ffffd7

    " future feature
    if has("gui_gtk2")
        " pass
    elseif has("x11")
        " pass
    elseif has("gui_win32")
        " pass
    endif
else
    " Terminal colors
    hi CursorLine  cterm=NONE ctermbg=235
    hi StatusLine  cterm=reverse ctermfg=52 ctermbg=194
    hi Normal      cterm=NONE ctermbg=232 ctermfg=230
    hi Comment     cterm=NONE ctermbg=NONE ctermfg=239
    hi Type        cterm=NONE ctermbg=NONE ctermfg=172
    hi Statement   cterm=bold ctermbg=NONE ctermfg=179
    hi PreProc     cterm=NONE ctermbg=NONE ctermfg=215
    hi Constant    cterm=NONE ctermbg=NONE ctermfg=228
    hi MatchParen  cterm=NONE ctermbg=94 ctermfg=230
endif


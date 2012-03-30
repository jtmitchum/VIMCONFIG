syntax on

"Get rid of Menu Bar
set guioptions-=T
set guioptions-=m

"Make it easier to insert newlines without leaving command mode
"map <CR> d}o<ESC>p:-1<CR>$ 

"map <S-Enter> O<ESC>j




"Highlights matching bracket pairs. 
set showmatch

set backspace=indent,eol,start
set nocompatible

"Set Colorscheme - I like this one because I can read comments
colorscheme vividchalk
au FocusGained * :colorscheme vividchalk
au FocusLost * :colorscheme wombat 

"Experimental Justin Shit
set statusline=%F\ \ %m%r%h%w\ \ \ \ TYPE=%{&ff}:%Y\ \ \ \ BUF=%n\ %=\ [ASCII=\%03.3b\ :\ HEX=\%02.2B]\ \ \ \ [COL=%v\ :\ LINE=%l\ :\ %L\ lines\ :\ %p%%]\ 
"This option is for Tex I believe
filetype off


" Set preview program for PDF's
let g:Tex_ViewRule_pdf = 'Preview'


"Turn on Conceal feature which I thought would be cool. 
set cole=2
hi Conceal guibg=black guifg=white

"This loads my plugins for me - by default stored in bundles/
call pathogen#infect()
filetype plugin indent on
set modelines=0
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest,full
set visualbell
set cursorline
set ttyfast
"Option apparently not needed if using a set statusbar - which I am"
""set ruler
set laststatus=2

"Line numbers are relative from cursor position - Not sure if I like it yet or
"not!
set relativenumber
set undofile

"If I change focus, save the file - even if temporarily
au FocusLost * :wa
au FocusLost * silent! wa


"Set mapleader to , - surely faster than \
let mapleader = ","


"Make a new vertical split window
nnoremap <leader>w <C-w>v<C-w>l

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <leader>nt :NERDTree<cr>

"Leader Commands
nnoremap <leader>b  d}<esc>p:-1<cr>$

" allows mac meta keys to work?"
set invmmta

nnoremap <tab> %
vnoremap <tab> %
nnoremap j gj
nnoremap k gk
nnoremap <leader>q gqip
inoremap ii <ESC>
let tlist_tex_settings   = 'latex;s:sections;g:graphics;l:labels'
let tlist_make_settings  = 'make;m:makros;t:targets'

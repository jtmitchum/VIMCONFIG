syntax on

"Set some better backup directory options"
" Save your backups to a less annoying place than the current directory.
" If you have .vim-backup in the current directory, it'll use that.
" Otherwise it saves it to ~/.vim/backup or . if all else fails.
if isdirectory($HOME . '/.vim/backup') == 0
  :silent !mkdir -p ~/.vim/backup >/dev/null 2>&1
endif
set backupdir-=.
set backupdir+=.
set backupdir-=~/
set backupdir^=~/.vim/backup/
set backupdir^=./.vim-backup/
set backup

" TAGBAR setup for CTAGS"
let g:tagbar_ctags_bin='/usr/local/bin/ctags'  " Proper Ctags locations
let g:tagbar_width=26                          " Default is 40, seems too wide
nnoremap <leader>y :TagbarToggle<cr>   
"Save your swp files to a less annoying place than the current directory.
" If you have .vim-swap in the current directory, it'll use that.
" Otherwise it saves it to ~/.vim/swap, ~/tmp or .
if isdirectory($HOME . '/.vim/swap') == 0
  :silent !mkdir -p ~/.vim/swap >/dev/null 2>&1
endif
set directory=./.vim-swap//
set directory+=~/.vim/swap//
set directory+=~/tmp//
set directory+=.

" viminfo stores the the state of your previous editing session
set viminfo+=n~/.vim/viminfo

if exists("+undofile")
  " undofile - This allows you to use undos after exiting and restarting
  " This, like swap and backups, uses .vim-undo first, then ~/.vim/undo
  " :help undo-persistence
  " This is only present in 7.3+
  if isdirectory($HOME . '/.vim/undo') == 0
    :silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
  endif
  set undodir=./.vim-undo//
  set undodir+=~/.vim/undo//
  set undofile
endif

"Get rid of Menu Bar
set guioptions-=T
set guioptions-=m

"Make it easier to insert newlines without leaving command mode
"map <CR> d}o<ESC>p:-1<CR>$ 

"map <S-Enter> O<ESC>j
set fillchars=vert:│

let $DYLD_LIBRARY_PATH="/Applications/MATLAB_R2011b.app/sys/os/maci64:/Applications/MATLAB_R2011b.app/bin/maci64"

"Highlights matching bracket pairs. 
set showmatch

set backspace=indent,eol,start
set nocompatible

"Set Colorscheme - I like this one because I can read comments
colorscheme vividchalk
""au FocusGained * :colorscheme vividchalk
""au FocusLost * :colorscheme wombat 

"Experimental Justin Shit
set statusline=%F\ \ %m%r%h%w\ \ \ \ TYPE=%{&ff}:%Y\ \ \ \ BUF=%n\ %=\ [ASCII=\%03.3b\ :\ HEX=\%02.2B]\ \ \ \ [COL=%v\ :\ LINE=%l\ :\ %L\ lines\ :\ %p%%]\ 
"This option is for Tex I believe
filetype off
" This is for mlint - a matlab compiler that reports errors
autocmd BufEnter *.m    compiler mlint 


" Set preview program for PDF's
let g:Tex_ViewRule_pdf = 'Preview'
let g:LatexBox_viewer = 'open'
let g:LatexBox_latexmk_options='-pvc'


"These are for Latex-Box"
	imap [[ 		\begin{
	imap ]]		<Plug>LatexCloseCurEnv

"This loads my plugins for me - by default stored in bundles/
call pathogen#infect()
""call pathogen#helptags()
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

"Turn on Conceal feature which I thought would be cool. 
set cole=2
hi Conceal guibg=Black guifg=White ctermbg=black ctermfg=white

highlight CursorLine cterm=none ctermbg=234
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


nnoremap <tab> %
vnoremap <tab> %
nnoremap j gj
nnoremap k gk
nnoremap <leader>q gqip
inoremap ii <ESC>
let tlist_tex_settings   = 'latex;s:sections;g:graphics;l:labels'
let tlist_make_settings  = 'make;m:makros;t:targets'

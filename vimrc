" .vimrc
" Author: K M Masum Habib <masum.habib@gmail.com>
" Versoion: 0.01
" Last Update: 05/30/2014
"

set nocompatible               " Be iMproved

"------------------------------------------------------------------------------
" Vundle Plugin Manager
"------------------------------------------------------------------------------
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"Plugin 'c.vim'
"Plugin 'cpp.vim'
Plugin 'a.vim'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-fugitive'
"Plugin 'powerline/powerline'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
"Plugin 'YouCompleteMe'
Plugin 'octol/vim-cpp-enhanced-highlight'

"Plugin 'duythinht/inori'
Plugin 'altercation/vim-colors-solarized'
"Plugin 'wellsjo/wells-colorscheme.vim'
"Plugin 'freeo/vim-kalisi'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"------------------------------------------------------------------------------
" General editing 
"------------------------------------------------------------------------------
filetype plugin indent on
syntax on

set background=dark " When set to "dark", Vim will try to use colors that look
"colorscheme default " Change to your preferred colour schem
"colorscheme inori
colorscheme solarized
let g:solarized_termcolors=256
let g:solarized_contrast = 'high'
"colorscheme wells-colors
"colorscheme bandit  

set history=10000   " Long undo history
set encoding=utf-8  " Unicode


set tabstop=4       " Number of spaces that a <Tab> in the file counts for.
set shiftwidth=4    " Number of spaces to use for each step of (auto)indent.
set expandtab       " Use the appropriate number of spaces to insert a <Tab>.
set smarttab        " When on, a <Tab> in front of a line inserts blanks

set showcmd         " Show (partial) command in status line.
set number          " Show line numbers.

set showmatch       " When a bracket is inserted, briefly jump to the matching

set hlsearch        " When there is a previous search pattern, highlight all
set incsearch       " While typing a search command, show immediately where the
set ignorecase      " Ignore case in search patterns.
set smartcase       " Override the 'ignorecase' option if the search pattern

set backspace=2     " Influences the working of <BS>, <Del>, CTRL-W
set backspace=indent,eol,start " smart backspace

set autoindent      " Copy indent from current line when starting a new line
set copyindent    " copy the previous indentation on autoindenting

set formatoptions=c,q,r 
                    " This is a sequence of letters which describes how
                    " automatic formatting is to be done.
                    "
                    " letter    meaning when present in 'formatoptions'
                    " ------    ---------------------------------------
                    " c         Auto-wrap comments using textwidth, inserting
                    "           the current comment leader automatically.
                    " q         Allow formatting of comments with "gq".
                    " r         Automatically insert the current comment leader
                    "           after hitting <Enter> in Insert mode. 
                    " t         Auto-wrap text using textwidth (does not apply
                    "           to comments)
 
set wildignore=.svn,CVS,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.jpg,*.png,*.xpm,*.gif

"set whichwrap=b,s,<,>,[,] " goto next line after end of line is reached
set cpoptions+=$    " Put a $ sign when changing a word.
"set list listchars=nbsp:¬,tab:>-,trail:.,precedes:<,extends:>
"set list
"set listchars=tab:>.,trail:.,extends:#,nbsp:.

set textwidth=80    " Maximum width of text that is being inserted. A longer
set colorcolumn=80  " Draw a vertical line at column 80
autocmd VimEnter * highlight ColorColumn ctermbg=darkgray

set ruler            " Show the line and column number of the cursor position,

set cursorline       " Highlight current line
autocmd VimEnter * highlight CursorLine cterm=bold ctermbg=236 ctermfg=NONE

" Disable sounds
"set vb t_vb=''
set noerrorbells
set visualbell

"set mouse=a          " Enable the use of the mouse.

"Pythin tab expand
autocmd filetype python set expandtab

" Environment
"-------------
set term=xterm
set backupdir=~/.vim/backup


" GUI
"--------
"set antialias
"set guifont=Monospace\ 14
"set guioptions-=T                    " TODO
"set guioptions+=c                    " TODO Console messages

"set spell
"autocmd FileType tex setlocal spell spelllang=en_us

"------------------------------------------------------------------------------
" Plugins
"------------------------------------------------------------------------------
" C++ syntax highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1

" "YouCompleteMi
"---------------
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py"

" PowerLine
"----------
"let g:Powerline_symbols = 'fancy'

" NERDTree
"----------
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p
"let g:NERDTreeStatusline=0

" Airline
"let g:airline_theme='kalisi'
let g:airline_left_sep=''
let g:airline_right_sep=''
"let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" Tags and autocomplete
"----------------------
" configure tags - add additional tags here or comment out not-used ones
"set tags=./tags;/
"set tags+=~/.vim/tags/std/cpp
" build tags of your own project with Ctrl-F12
"map <C-F11> :!ctags -R --c++-kinds=+pl --fields=+iaS --extra=+q .<CR>

" OmniCppComplete
"-----------------
"let OmniCpp_NamespaceSearch = 1
"let OmniCpp_GlobalScopeSearch = 1
"let OmniCpp_ShowAccess = 1
"let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
"let OmniCpp_MayCompleteDot = 1 " autocomplete after .
"let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
"let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
"let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
"au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
"set completeopt=menuone,menu,longest,preview


"------------------------------------------------------------------------------
" Keyboard shortcuts
"------------------------------------------------------------------------------
"Leader
let mapleader = '\'

" Disable tab when pasting
set pastetoggle=<F2>    
" user ; inplace of :
nnoremap ; :
" Easy editing long line
nnoremap j gj
nnoremap k gk
" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" Switch to alternate file
map <C-i> :bprevious<cr>
map <C-S-i> :bnext<cr>

" Deselect search items
nmap <silent> ,/ :nohlsearch<CR>

" Swithc between heade and cpp
map <C-a> :A<CR>

"NERDTree
map <C-n> :NERDTreeToggle<CR>

"CtrlP
map <C-b> :CtrlPBuffer<CR>

" Tagbar
"nmap <F8> :TagbarToggle<CR> 
"map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
"map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>


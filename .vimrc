set bg=dark
set hlsearch
set incsearch
set wildmenu
set ignorecase

" --------------------------------------------------------------------------------
" configure editor with tabs and nice stuff...
" --------------------------------------------------------------------------------
set expandtab           " enter spaces when tab is pressed
"set textwidth=120       " break lines when line length increases
set tabstop=2           " use 2 spaces to represent tab
set softtabstop=2
set shiftwidth=2       " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line
set expandtab    " convert tabs into spaces


" make backspaces more powerfull
set backspace=indent,eol,start

set ruler                           " show line and column number
syntax on                       " syntax highlighting
set showcmd                     " show (partial) command in status line
set number                      " show line numbers
set clipboard=unnamedplus           " copy to clipboard

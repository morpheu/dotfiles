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

"=====[ Make Visual modes work better ]==================

"Square up visual selections...
set virtualedit=block

" Make BS/DEL work as expected in visual modes (i.e. delete the selected text)...
vmap <BS> x


"====[ Use persistent undo ]=================

if has('persistent_undo')
    " Save all undo files in a single location (less messy, more risky)...
    set undodir=$HOME/tmp/.VIM_UNDO_FILES

    " Save a lot of back-history...
    set undolevels=5000

    " Actually switch on persistent undo
    set undofile

endif

"====[ Set up smarter search behaviour ]=======================

set incsearch       "Lookahead as search pattern is specified
set ignorecase      "Ignore case in all searches...
set smartcase       "...unless uppercase letters used

set hlsearch        "Highlight all matches
highlight clear Search
highlight       Search    ctermfg=White

"Delete in normal mode switches off highlighting till next search...
nmap <silent> <BS> :nohlsearch

"=====[ Search folding ]=====================

" Toggle on and off...
nmap <silent> <expr>  zz  FS_ToggleFoldAroundSearch({'context':1})

" Show only Perl sub defns...
nmap <silent> <expr>  zp  FS_FoldAroundTarget('^\s*sub\s\+\w\+',{'context':1})

" Show only Perl sub defns and comments...
nmap <silent> <expr>  za  FS_FoldAroundTarget('^\s*\%(sub\s.*\\|#.*\)',{'context':0, 'folds':'invisible'})

" Show only C #includes...
nmap <silent> <expr>  zu  FS_FoldAroundTarget('^\s*use\s\+\S.*;',{'context':1})

"====[ I'm sick of typing :%s/.../.../g ]=======

nmap S  [Shortcut for :s///g]  :%s//g<LEFT><LEFT>
vmap S                         :s//g<LEFT><LEFT>



syntax on
set autoread
if has('mouse')
  set mouse=a
endif
" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Make backspace work normally
set backspace=2

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

set tabstop=4
set shiftwidth=4
set softtabstop=4

" Make Markdown files nicely word wrapped
au BufRead,BufNewFile *.md setlocal textwidth=80

filetype indent on

set smarttab
set expandtab

" Make it obvious where 80 characters is if needed
set colorcolumn=+1

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()

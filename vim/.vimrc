
" george craig
" 15-Jun-2015 _vimrc

" cursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait20

" Tabs
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" gui and fonts
if has('gui_running')
  set guioptions-=T  " no toolbar
  colorscheme github
  set lines=60 columns=108 linespace=5
  if has('gui_win32')
	"set guifont=7x14
    set guifont=DejaVu_Sans_Mono_for_Powerline:h10:cANSI
  else
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
  endif
endif

filetype plugin on
set omnifunc=syntaxcomplete#Complete

" line numbers and appearance
:set number
:set numberwidth=4
:highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" highlighting
syntax enable

" no message on startup
:set visualbell
:set shortmess=I

" map keys F8 to Tlist
nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_Auto_Open=1

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()
autocmd BufWrite *.js :call DeleteTrailingWS()

" todo: list installed packages and urls

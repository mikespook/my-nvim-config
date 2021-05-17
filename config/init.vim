syntax on		 
colorscheme elflord

set autoread		"auto load changed file"

set number			"line number"
set colorcolumn=80	"indicate 80 characters"
set shiftwidth=4
set tabstop=4
set smarttab
set si				"smart indent"

let mapleader = ","
let g:mapleader = ","

set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c\ %p%%\ %P

function! CurDir()
    let curdir = substitute(getcwd(), '/home/mikespook/', "~/", "g")
    return curdir
endfunction

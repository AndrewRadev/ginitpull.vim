if exists('g:loaded_ginitpull') || &cp
  finish
endif

let g:loaded_ginitpull = '0.0.1' " version number
let s:keepcpo = &cpo
set cpo&vim

command! -complete=custom,ginitpull#Complete -nargs=*
      \ Ginitpull
      \ call ginitpull#Run(<f-args>)

let &cpo = s:keepcpo
unlet s:keepcpo

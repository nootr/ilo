" Vim syntax file
" Language: a
" Maintainer: jhartog (@nootr)
" Latest revision: 8 Feb 2022

" Usage Instructions
"
"   cp a.vim ~/.vim/syntax
"
" And add the following line to your .vimrc:
"
"   autocmd BufRead,BufNewFile *.a set filetype=a

if exists("b:current_syntax")
  finish
endif

" Keywords
syntax keyword aKeywords import var def if else dup swap over rot drop syscall
syntax keyword aTypes int ptr chr bool

" Comments
syntax region aComment start="#" end="$"

" Literals
syntax region aString start=/\v"/ skip=/\v\\./ end=/\v"/ contains=aEscapes
syntax region aChar start=/\v'/ skip=/\v\\./ end=/\v'/ contains=aEscapes
syntax region aNumber start=/\s\d/ skip=/\d/ end=/\s/
syntax match aEscapes display contained "\\[nr\"']"

" Set highlights
highlight default link aKeywords  Keyword
highlight default link aTypes     Type
highlight default link aComment   Comment
highlight default link aString    String
highlight default link aChar      Character
highlight default link aNumber    Number
highlight default link aEscapes   SpecialChar

let b:current_syntax = "a"

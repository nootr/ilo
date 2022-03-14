" Vim syntax file
" Language: Ilo
" Maintainer: jhartog (@nootr)
" Latest revision: 8 Feb 2022

" Usage Instructions
"
"   cp ilo.vim ~/.vim/syntax
"
" And add the following line to your .vimrc:
"
"   autocmd BufRead,BufNewFile *.ilo set filetype=ilo

if exists("b:current_syntax")
  finish
endif

" Keywords
syntax keyword iloFunctions strlen itos traceback
syntax keyword iloKeywords import var def if elif else dup swap over rot drop syscall derefc derefi derefb derefp buffer setc seti setb setp const and or while castc casti castb castp location debug shl shr reff inline
syntax keyword iloTypes int ptr char bool void
syntax keyword iloBoolean True False

" Comments
syntax region iloComment start="#" end="$"

" Literals
syntax region iloString start=/\v"/  end=/\v"/ contains=iloEscapes
syntax region iloChar   start=/\v'/  end=/\v'/ contains=iloEscapes
syntax region iloNumber start=/\s\d/ end=/[ \t\n]/
syntax match iloEscapes display contained "\\[nr\"']"

" Set highlights
highlight default link iloFunctions Function
highlight default link iloKeywords  Keyword
highlight default link iloTypes     Type
highlight default link iloBoolean   Boolean
highlight default link iloComment   Comment
highlight default link iloString    String
highlight default link iloChar      Character
highlight default link iloNumber    Number
highlight default link iloEscapes   SpecialChar

let b:current_syntax = "ilo"

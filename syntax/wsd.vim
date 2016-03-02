" Vim syntax file
" Language: WebSequenceDiagrams
" Maintainer: Rafael Martins
" Latest Revision: 1 March 2016
if exists("b:current_syntax")
    finish
endif

" Communication
syn match wsdCommunication '-[-]\=>[\*+-]\='

" Keywords
syn keyword wsdKeyword title
syn keyword wsdKeyword note left right over of
syn keyword wsdKeyword alt opt loop else
syn keyword wsdKeyword end destroy

" Comments
syn keyword wsdTodo contained TODO FIXME XXX NOTE
syn match wsdComment "#.*$" contains=wsdTodo

hi def link wsdKeyword          Keyword
hi def link wsdCommunication    Constant
hi def link wsdComment          Comment

let b:current_syntax = "wsd"

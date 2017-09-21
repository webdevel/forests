" forests.vim - Dark terminal color scheme for Vim with forest colors
" File:          forests.vim
" Location:      colors/forests.vim
" Author:        Steven Garcia <https://github.com/webdevel>
" Description:   Dark terminal color scheme for Vim with forest colors.
" Version:       0.1
" License:       GNU GPLv2
" GetLatestVimScripts: 9999 1 :AutoInstall: forests.vim

" Initialize highlighting "{{{
" ----------------------------
hi clear

if exists('syntax_on')

  syntax reset

endif

let colors_name = 'forests'

set background=dark
"}}}

" Assign custom color names "{{{
" ------------------------------
let s:obsidian = 0
let s:soil = 1
let s:moss = 2
let s:grass = 3
let s:lake = 4
let s:wood = 5
let s:stone = 6
let s:ash = 7
let s:charcoal = 8
let s:bark = 9
let s:fern = 10
let s:sap = 11
let s:sky = 12
let s:cone = 13
let s:leaf = 14
let s:snow = 15
"}}}

" Code syntax highlighting "{{{
" -----------------------------
" normal plain text
exe printf('hi! Normal ctermbg=%s ctermfg=%s', s:obsidian, s:wood)
 
" code comment
exe printf('hi! Comment ctermbg=%s ctermfg=%s', s:obsidian, s:stone)

" code constant
" String          a string constant: "this is a string"
" Character       a character constant: 'c', '\n'
" Number          a number constant: 234, 0xff
" Boolean         a boolean constant: TRUE, false
" Float           a floating point constant: 2.3e10
exe printf('hi! Constant ctermbg=%s ctermfg=%s', s:obsidian, s:fern)

" code variable
"        Function        function name (also: methods for classes)
exe printf('hi! Identifier ctermbg=%s ctermfg=%s', s:obsidian, s:grass)

" code statement
"        Conditional     if, then, else, endif, switch, etc.
"        Repeat          for, do, while, etc.
"        Label           case, default, etc.
"        Operator        "sizeof", "+", "*", etc.
"        Keyword         any other keyword
"        Exception       try, catch, throw
exe printf('hi! Statement ctermbg=%s ctermfg=%s', s:obsidian, s:leaf)

" code preprocessor
"        Include         preprocessor #include
"        Define          preprocessor #define
"        Macro           same as Define
"        PreCondit       preprocessor #if, #else, #endif, etc.
exe printf('hi! PreProc ctermbg=%s ctermfg=%s', s:obsidian, s:bark)

" code type specifier            int, long, char, etc.
"        StorageClass    static, register, volatile, etc.
"        Structure       struct, union, enum, etc.
"        Typedef         A typedef
exe printf('hi! Type ctermbg=%s ctermfg=%s', s:obsidian, s:moss)

" code symbol
"        SpecialChar     special character in a constant
"        Tag             you can use CTRL-] on this
"        Delimiter       character that needs attention
"        SpecialComment  special things inside a comment
"        Debug           debugging statements
exe printf('hi! Special ctermbg=%s ctermfg=%s', s:obsidian, s:cone)

" code underlined
"       *Underlined      text that stands out, HTML links
exe printf('hi! Underlined ctermbg=%s ctermfg=%s', s:obsidian, s:lake)

" code todo
"       *Todo            anything that needs extra attention; mostly the
"                        keywords TODO FIXME and XXX
exe printf('hi! Todo ctermbg=%s ctermfg=%s', s:obsidian, s:sap)

" code parenthesis
exe printf('hi! MatchParen ctermbg=%s ctermfg=%s', s:lake, s:sky)

"}}}

" Vim Interface Highlighting "{{{
" -------------------------------
" line number
exe printf('hi! LineNr ctermbg=%s ctermfg=%s', s:charcoal, s:stone)

" status line
exe printf('hi! StatusLine ctermbg=%s ctermfg=%s cterm=%s', s:charcoal, s:stone, 'NONE')
exe printf('hi! StatusLineNC ctermbg=%s ctermfg=%s cterm=%s', s:obsidian, s:stone, 'NONE')

" tab line
exe printf('hi! TabLine ctermbg=%s ctermfg=%s cterm=%s', s:charcoal, s:stone, 'NONE')
exe printf('hi! TabLineSel ctermbg=%s ctermfg=%s cterm=%s', s:obsidian, s:leaf, 'NONE')
exe printf('hi! TabLineFill ctermbg=%s ctermfg=%s cterm=%s', s:charcoal, s:stone, 'NONE')

" folded
exe printf('hi! Folded ctermbg=%s ctermfg=%s', s:charcoal, s:stone)

" folded column 
exe printf('hi! FoldedColumn ctermbg=%s ctermfg=%s', s:charcoal, s:stone)

"}}}

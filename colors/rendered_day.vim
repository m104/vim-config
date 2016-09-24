" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=2 sw=2
" Vim color file
" Maintainer:    Adam Collins <adam.w.collins@gmail.com>
" Last Change:   2016-02-17


hi clear
if exists("syntax_on")
  syntax reset
endif

set background=dark

let g:colors_name = "rendered_day"

" base colors
let s:dark_bg       = "#15161E"
let s:plain_bg      = "#21222B"
let s:light_bg      = "#252630"
let s:visual_bg     = "#2A3066"

let s:plain         = "#F7F7F7"
let s:comment       = "#5F6385"
let s:keyword       = "#A4A4A4"

let s:black         = "#101010"
let s:grey          = "#BCBCBC"
let s:yellow        = "#FFFF7A"
let s:yellow_bg     = "#343419"
let s:orange        = "#FFA361"
let s:orange_bg     = "#342114"
let s:magenta       = "#FB7DFF"
let s:magenta_bg    = "#321933"
let s:blue          = "#5199FE"
let s:blue_bg       = "#182E4C"
let s:cyan          = "#66FFF0"
let s:cyan_bg       = "#153431"
let s:green         = "#8CFFA3"
let s:green_bg      = "#1B3220"

exe "hi! Normal        gui=none guifg=".s:plain. " guibg=".s:plain_bg

exe "hi! Comment       gui=none guifg=".s:comment
"       *Comment         any comment

exe "hi! Constant      gui=none guifg=".s:blue
"       *Constant        any constant
exe "hi! Boolean       gui=none guifg=".s:blue
"        Boolean         a boolean constant: TRUE, false

exe "hi! String        gui=none guifg=".s:yellow
"        String          a string constant: "this is a string"

exe "hi! Character     gui=none guifg=".s:magenta
"        Character       a character constant: 'c', '\n'
exe "hi! Number        gui=none guifg=".s:magenta
"        Number          a number constant: 234, 0xff
exe "hi! Float         gui=none guifg=".s:magenta
"        Float           a floating point constant: 2.3e10

exe "hi! Identifier    gui=none guifg=".s:blue
"       *Identifier      any variable name

exe "hi! Function      gui=none guifg=".s:green
"        Function        function name (also: methods for classes)

exe "hi! Statement     gui=none guifg=".s:keyword
"       *Statement       any statement
"        Conditional     if, then, else, endif, switch, etc.
"        Repeat          for, do, while, etc.
"        Label           case, default, etc.
"        Operator        "sizeof", "+", "*", etc.
"        Keyword         any other keyword
"        Exception       try, catch, throw

exe "hi! Type          gui=none guifg=".s:orange
"       *Type            int, long, char, etc.
"        StorageClass    static, register, volatile, etc.
"        Structure       struct, union, enum, etc.
"        Typedef         A typedef

exe "hi! Special       gui=none guifg=".s:magenta
"       *Special         any special symbol
"        SpecialChar     special character in a constant
"        Tag             you can use CTRL-] on this
"        SpecialComment  special things inside a comment
"        Debug           debugging statements

exe "hi! Delimiter     gui=none guifg=".s:yellow
"        Delimiter       character that needs attention

exe "hi! Title         gui=bold guifg=".s:orange

exe "hi! Todo          gui=bold guifg=".s:yellow. " guibg=".s:plain_bg
"       *Todo            anything that needs extra attention; mostly the
"                        keywords TODO FIXME and XXX

exe "hi! PreProc       gui=none guifg=".s:keyword
"       *PreProc         generic Preprocessor
"        Include         preprocessor #include
"        Define          preprocessor #define
"        Macro           same as Define
"        PreCondit       preprocessor #if, #else, #endif, etc.

exe "hi! IncSearch     gui=bold guifg=".s:plain.    " guibg=".s:blue
exe "hi! Search        gui=bold guifg=".s:plain.    " guibg=".s:comment

exe "hi! Visual        gui=none                       guibg=".s:visual_bg

exe "hi! NonText       gui=none guifg=".s:plain.    " guibg=".s:light_bg
exe "hi! LineNr        gui=none guifg=".s:comment.  " guibg=".s:plain_bg
exe "hi! VertSplit     gui=none guifg=".s:light_bg. " guibg=".s:light_bg
exe "hi! Directory     gui=none guifg=".s:blue

exe "hi! Folded        gui=none guifg=".s:orange.   " guibg=".s:orange_bg
exe "hi! FoldColumn    gui=none guifg=".s:orange.   " guibg=".s:orange_bg

exe "hi! DiffText      gui=none guifg=".s:cyan.     " guibg=".s:black
exe "hi! DiffChange    gui=none                       guibg=".s:blue_bg
exe "hi! DiffAdd       gui=none guifg=".s:green.    " guibg=".s:green_bg
exe "hi! DiffDelete    gui=none guifg=".s:magenta.  " guibg=".s:magenta_bg

exe "hi! diffChanged   gui=none guifg=".s:yellow.   " guibg=".s:yellow_bg
exe "hi! diffAdded     gui=none guifg=".s:green.    " guibg=".s:green_bg
exe "hi! diffRemoved   gui=none guifg=".s:magenta.  " guibg=".s:magenta_bg



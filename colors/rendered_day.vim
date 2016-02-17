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
let s:background    = "#1C1D24"
let s:highlight_bg  = "#1E2061"

let s:plain         = "#FFFFFF"
let s:comment       = "#4F5177"
let s:keyword       = "#A4A4A4"

let s:grey          = "#BCBCBC"
let s:yellow        = "#FFFF51"
let s:orange        = "#F78E41"
let s:magenta       = "#F85AFE"
let s:blue          = "#5199FE"
let s:cyan          = "#3EF1DE"
let s:green         = "#6CFB88"

exe "hi! LineNr        gui=none guifg=".s:grey. " guibg=".s:background

exe "hi! Normal        gui=none guifg=".s:plain. " guibg=".s:background

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

exe "hi! Todo          gui=none guifg=".s:yellow. " guibg=".s:background
"       *Todo            anything that needs extra attention; mostly the
"                        keywords TODO FIXME and XXX

exe "hi! PreProc       gui=none guifg=".s:keyword
"       *PreProc         generic Preprocessor
"        Include         preprocessor #include
"        Define          preprocessor #define
"        Macro           same as Define
"        PreCondit       preprocessor #if, #else, #endif, etc.

if 0

" TODO

exe "hi! Underlined"     .s:fmt_none   .s:fg_violet .s:bg_none
"       *Underlined      text that stands out, HTML links

exe "hi! Ignore"         .s:fmt_none   .s:fg_none   .s:bg_none
"       *Ignore          left blank, hidden  |hl-Ignore|

exe "hi! Error"          .s:fmt_bold   .s:fg_red    .s:bg_none
"       *Error           any erroneous construct

endif

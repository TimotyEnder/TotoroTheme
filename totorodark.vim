" Theme:   totoroDark
" File:    totorodark.vim
" Author:  TimotyEnder
" requires :set termguicolors
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = 'totorodark'

hi Cursor        guifg=#323232 guibg=#c2ada7  ctermfg=236 ctermbg=232
hi lCursor       guifg=#323232 guibg=#c2ada7  ctermfg=236 ctermbg=232
hi CursorIM      guifg=#323232 guibg=#c2ada7  ctermfg=236 ctermbg=232
hi Directory     guifg=#61b061 guibg=#323232  ctermfg=71 ctermbg=236 gui=bold
hi ErrorMsg      guifg=#ee1111 guibg=#323232  ctermbg=236
hi VertSplit     guifg=#323232 guibg=#5796ad  ctermfg=236 ctermbg=67
hi LineNr        guifg=#a99691 guibg=#3a3a3a  ctermfg=238 ctermbg=237
hi ModeMsg       guifg=#cbe356 guibg=#323232  ctermfg=1 ctermbg=236
hi MoreMsg       guifg=#cbe356 guibg=#323232  ctermfg=1 ctermbg=236
hi Normal        guifg=#c2ada7 guibg=#323232  ctermfg=232 ctermbg=236
hi SpellBad      guifg=#ff0000 guibg=#323232  ctermfg=red ctermbg=236 gui=underline cterm=underline
hi Question      guifg=#cbe356 guibg=#323232  ctermfg=1 ctermbg=236
hi Search        guifg=#a99691 guibg=#414141 gui=none  ctermfg=232 ctermbg=238
hi NonText       gui=none
hi SpecialKey    guifg=#cbe356 ctermfg=1
"\n, \0, %d, %s, etc...
hi Special       guifg=#5796ad ctermfg=67 gui=bold
" status line
hi Title         guifg=#5796ad guibg=#323232 gui=bold  ctermfg=67 ctermbg=236
hi Visual        guibg=#414141 gui=none  ctermbg=238
hi VisualNOS     guibg=#323232 ctermbg=236
hi WarningMsg    guifg=#61b061 guibg=#323232  ctermfg=71 ctermbg=236
hi Number        guifg=#70a5cf ctermfg=239
hi Char          guifg=#ECBD37 gui=italic ctermfg=215
hi String        guifg=#ECBD37 ctermfg=215
hi Boolean       guifg=#9090d6  ctermfg=239
hi Comment       guifg=#cbe356  ctermfg=1
hi Constant      guifg=#9090d6 ctermfg=239
hi Identifier    guifg=#61b061  ctermfg=71
hi Statement     guifg=#5796ad gui=none  ctermfg=67
hi CursorLine    guibg=#414141  ctermbg=238
hi CursorLineNR  guifg=#5796ad gui=bold  ctermfg=67

"Procedure name
hi Function      guifg=#B09D96  ctermfg=239

"Define, def
hi PreProc       guifg=#61b061 gui=bold  ctermfg=71
hi Type          guifg=#5796ad gui=bold  ctermfg=67
hi Underlined    guifg=#61b061 gui=underline  ctermfg=71
hi Error         guifg=#ee1111 guibg=#323232  ctermbg=236
hi Todo          guifg=#323232 guibg=#cbe356 gui=none  ctermfg=236 ctermbg=1
hi SignColumn    guibg=#323232  ctermbg=236

if version >= 700
  " Pmenu
  hi Pmenu        guifg=#c2ada7 guibg=#414141  ctermfg=232 ctermbg=238
  hi PmenuSel     guifg=#5796ad guibg=#323232  ctermfg=67 ctermbg=236
  hi PmenuSbar    guibg=#3a3a3a  ctermbg=237

  " Tab
  hi TabLine      guifg=#c2ada7 guibg=#3a3a3a gui=bold  ctermfg=232 ctermbg=237
  hi TabLineFill  guifg=#323232 guibg=#323232 gui=bold  ctermfg=236 ctermbg=236
  hi TabLineSel   guifg=#5796ad guibg=#414141 gui=bold  ctermfg=67 ctermbg=238
endif

hi diffAdded ctermfg=green guifg=#00FF00
hi diffRemoved ctermfg=red guifg=#FF0000

if has('nvim')
  if has('nvim-0.9')
    hi! link  @lsp.type.class Type
    hi! link  @lsp.type.decorator Function
    hi! link  @lsp.type.enum Type
    hi! link  @lsp.type.enumMember Constant
    hi! link  @lsp.type.function Function
    hi! link  @lsp.type.interface Function
    hi! link  @lsp.type.macro Function
    hi! link  @lsp.type.method Function
    hi! link  @lsp.type.namespace Type
    hi! link  @lsp.type.parameter Type
    hi! link  @lsp.type.property Constant
    hi! link  @lsp.type.struct Type
    hi! link  @lsp.type.type Type
    hi! link  @lsp.type.typeParameter Type
    hi! link  @lsp.type.variable Normal
  elseif has('nvim-0.8.1')
    hi! link @type Type
    hi! link @function Function
    hi! link @number Number
    hi! link @string String
    hi! link @comment Comment
    hi! link @keyword Keyword
    hi! link @variable  Normal
    hi! link @constant  Constant
    hi! link @module    Constant
    hi! link @namespace Constant
  endif
else
  " Highlight function names
  syn match    cCustomParen    "(" contains=cParen,cCppParen
  syn match    cCustomFunc     "\w\+\s*(" contains=cCustomParen

  hi cCustomFunc guifg=#B09D96 gui=bold  ctermfg=239
endif

" Maintainer: Al.exe <alEXE-tech@protonmail.com>

set background=dark
hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name='rose-pine-plus'

hi Normal guifg=#e0def4 ctermfg=189 guibg=#191724 ctermbg=234 gui=NONE cterm=NONE
hi Comment guifg=#b8d8be ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Constant guifg=#69d1a7 ctermfg=79 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi String guifg=#e793ce ctermfg=176 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Character guifg=#e0def4 ctermfg=189 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Number guifg=#9ccfd8 ctermfg=152 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Boolean guifg=#73ceff ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Float guifg=#286983 ctermfg=24 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Identifier guifg=#eb7f92 ctermfg=210 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Function guifg=#f6c177 ctermfg=216 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Statement guifg=#73ceff ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Conditional guifg=#b55050 ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Repeat guifg=#e7cde7 ctermfg=253 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Label guifg=#817c9c ctermfg=103 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Operator guifg=#c4a7e7 ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Keyword guifg=#b55050 ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Exception guifg=#286983 ctermfg=24 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi PreProc guifg=#dea340 ctermfg=179 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Include guifg=#b55050 ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Define guifg=#eb7f92 ctermfg=210 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Title guifg=#9ccfd8 ctermfg=152 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Macro guifg=#c4a7e7 ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi PreCondit guifg=#817c9c ctermfg=103 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Type guifg=#ce9178 ctermfg=174 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StorageClass guifg=#817c9c ctermfg=103 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Structure guifg=#dea340 ctermfg=179 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Typedef guifg=#dea340 ctermfg=179 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Special guifg=#b55050 ctermfg=131 guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi SpecialComment guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Error guifg=#f44747 ctermfg=203 guibg=NONE ctermbg=NONE gui=bold,reverse cterm=bold,reverse
hi Todo guifg=#c4a7e7 ctermfg=182 guibg=NONE ctermbg=NONE gui=bold,italic cterm=bold,italic
hi Underlined guifg=#9ccfd8 ctermfg=152 gui=underline cterm=underline
hi Cursor guifg=#515052 ctermfg=239 guibg=#aeafad ctermbg=145 gui=NONE cterm=NONE
hi ColorColumn guifg=NONE ctermfg=NONE guibg=#2c323c ctermbg=236 gui=NONE cterm=NONE
hi CursorLineNr guifg=#e7cde7 ctermfg=253 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi SignColumn guifg=NONE ctermfg=NONE guibg=#191724 ctermbg=234 gui=NONE cterm=NONE
hi Conceal guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CursorColumn guifg=NONE ctermfg=NONE guibg=#2c323c ctermbg=236 gui=NONE cterm=NONE
hi CursorLine guifg=NONE ctermfg=NONE guibg=#2c323c ctermbg=236 gui=NONE cterm=NONE
hi Directory guifg=#b55050 ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiffAdd guifg=#191724 ctermfg=234 guibg=#608b4e ctermbg=65 gui=NONE cterm=NONE
hi DiffChange guifg=#dea340 ctermfg=179 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi DiffDelete guifg=#191724 ctermfg=234 guibg=#eb7f92 ctermbg=210 gui=NONE cterm=NONE
hi DiffText guifg=#191724 ctermfg=234 guibg=#dea340 ctermbg=179 gui=NONE cterm=NONE
hi ErrorMsg guifg=#f44747 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi VertSplit guifg=#3e4452 ctermfg=238 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Folded guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi FoldColumn guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi IncSearch guifg=NONE ctermfg=NONE guibg=#5c6370 ctermbg=241 gui=NONE cterm=NONE
hi LineNr guifg=#858585 ctermfg=102 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NonText guifg=#3b4048 ctermfg=238 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Pmenu guifg=#e7cde7 ctermfg=253 guibg=#282c34 ctermbg=236 gui=NONE cterm=NONE
hi PmenuSel guifg=#191724 ctermfg=234 guibg=#b55050 ctermbg=131 gui=NONE cterm=NONE
hi PmenuSbar guifg=NONE ctermfg=NONE guibg=#3b4048 ctermbg=238 gui=NONE cterm=NONE
hi PmenuThumb guifg=NONE ctermfg=NONE guibg=#e7cde7 ctermbg=253 gui=NONE cterm=NONE
hi Question guifg=#c4a7e7 ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi QuickFixLine guifg=NONE ctermfg=NONE guibg=#5c6370 ctermbg=241 gui=NONE cterm=NONE
hi Search guifg=NONE ctermfg=NONE guibg=#5c6370 ctermbg=241 gui=NONE cterm=NONE
hi SpecialKey guifg=#3b4048 ctermfg=238 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SpellBad guifg=#f44747 ctermfg=203 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi SpellCap guifg=#f6c177 ctermfg=216 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SpellLocal guifg=#f6c177 ctermfg=216 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SpellRare guifg=#f6c177 ctermfg=216 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StatusLine guifg=#e7cde7 ctermfg=253 guibg=#2c323c ctermbg=236 gui=NONE cterm=NONE
hi StatusLineNC guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StatusLineTerm guifg=#e7cde7 ctermfg=253 guibg=#2c323c ctermbg=236 gui=NONE cterm=NONE
hi StatusLineTermNC guifg=#2c323c ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TabLine guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TabLineSel guifg=#e7cde7 ctermfg=253 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TabLineFill guifg=NONE ctermfg=NONE guibg=#252526 ctermbg=235 gui=NONE cterm=NONE
hi Terminal guifg=#e7cde7 ctermfg=253 guibg=#191724 ctermbg=234 gui=NONE cterm=NONE
hi Visual guifg=NONE ctermfg=NONE guibg=#3e4452 ctermbg=238 gui=NONE cterm=NONE
hi VisualNOS guifg=#3e4452 ctermfg=238 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi WarningMsg guifg=#dea340 ctermfg=179 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi WildMenu guifg=#191724 ctermfg=234 guibg=#b55050 ctermbg=131 gui=NONE cterm=NONE
hi EndOfBuffer guifg=#191724 ctermfg=234 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSComment guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSError guifg=#f44747 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSPunctDelimiter guifg=#b55050 ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSPunctBracket guifg=#ce9178 ctermfg=174 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSPunctSpecial guifg=#e7cde7 ctermfg=253 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSConstant guifg=#ce9178 ctermfg=174 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSConstBuiltin guifg=#b55050 ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSConstMacro guifg=#e7cde7 ctermfg=253 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSStringRegex guifg=#ce9178 ctermfg=174 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSString guifg=#e793ce ctermfg=176 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSStringEscape guifg=#dea340 ctermfg=179 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSCharacter guifg=#e0def4 ctermfg=189 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSNumber guifg=#9ccfd8 ctermfg=152 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSBoolean guifg=#73ceff ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSFloat guifg=#286983 ctermfg=24 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSAnnotation guifg=#dea340 ctermfg=179 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSAttribute guifg=#9ccfd8 ctermfg=152 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSNamespace guifg=#ebbcba ctermfg=217 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSFuncBuiltin guifg=#dea340 ctermfg=179 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSFunction guifg=#f6c177 ctermfg=216 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSFuncMacro guifg=#dea340 ctermfg=179 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSParameter guifg=#c4a7e7 ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSParameterReference guifg=#817c9c ctermfg=103 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSMethod guifg=#f6c177 ctermfg=216 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSField guifg=#eb7f92 ctermfg=210 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSProperty guifg=#817c9c ctermfg=103 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSConstructor guifg=#81b88b ctermfg=108 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSConditional guifg=#b55050 ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSRepeat guifg=#608b4e ctermfg=65 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSLabel guifg=#817c9c ctermfg=103 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSKeyword guifg=#eb7f92 ctermfg=210 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSKeywordFunction guifg=#ebbcba ctermfg=217 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSKeywordOperator guifg=#73ceff ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSOperator guifg=#69d1a7 ctermfg=79 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSException guifg=#c4a7e7 ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSType guifg=#ce9178 ctermfg=174 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSTypeBuiltin guifg=#dea340 ctermfg=179 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSStructure guifg=#ff00ff ctermfg=201 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSInclude guifg=#b55050 ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSVariable guifg=#ebbcba ctermfg=217 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSVariableBuiltin guifg=#817c9c ctermfg=103 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSText guifg=#ffff00 ctermfg=226 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSStrong guifg=#ffff00 ctermfg=226 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSEmphasis guifg=#ffff00 ctermfg=226 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSUnderline guifg=#ffff00 ctermfg=226 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSTitle guifg=#ffff00 ctermfg=226 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSLiteral guifg=#ce9178 ctermfg=174 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSURI guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi TSTag guifg=#b55050 ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSTagDelimiter guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSTagAttribute guifg=#ebbcba ctermfg=217 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSQueryLinterError guifg=#ff8800 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyPercentStringDelimiter guifg=#81b88b ctermfg=108 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyStringDelimiter guifg=#608b4e ctermfg=65 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyConditionalExpression guifg=#ebbcba ctermfg=217 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyCaseExpression guifg=#ebbcba ctermfg=217 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyMethodBlock guifg=#ebbcba ctermfg=217 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyMethodName guifg=#f6c177 ctermfg=216 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyDoBlock guifg=#e7cde7 ctermfg=253 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyInterpolation guifg=#c4a7e7 ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyInterpolationDelimiter guifg=#608b4e ctermfg=65 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyStringEscape guifg=#dea340 ctermfg=179 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyKeywordAsMethod guifg=#ce9178 ctermfg=174 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubySymbol guifg=#c4a7e7 ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyBlockParameterList guifg=#608b4e ctermfg=65 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyCapitalizedMethod guifg=#9ccfd8 ctermfg=152 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyClass guifg=#69d1a7 ctermfg=79 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyExceptionHandler2 guifg=#73ceff ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlArg guifg=#f6c177 ctermfg=216 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlBold guifg=#f6c177 ctermfg=216 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi htmlEndTag guifg=#e7cde7 ctermfg=253 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlH1 guifg=#b55050 ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlH2 guifg=#b55050 ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlH3 guifg=#b55050 ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlH4 guifg=#b55050 ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlH5 guifg=#b55050 ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlH6 guifg=#b55050 ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlItalic guifg=#c4a7e7 ctermfg=182 guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi htmlLink guifg=#9ccfd8 ctermfg=152 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi htmlSpecialChar guifg=#f6c177 ctermfg=216 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlSpecialTagName guifg=#b55050 ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlTag guifg=#e7cde7 ctermfg=253 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlTagN guifg=#b55050 ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlTagName guifg=#b55050 ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlTitle guifg=#e7cde7 ctermfg=253 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownBlockquote guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownBold guifg=#f6c177 ctermfg=216 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi markdownCode guifg=#608b4e ctermfg=65 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownCodeBlock guifg=#608b4e ctermfg=65 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownCodeDelimiter guifg=#608b4e ctermfg=65 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownH1 guifg=#b55050 ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownH2 guifg=#b55050 ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownH3 guifg=#b55050 ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownH4 guifg=#b55050 ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownH5 guifg=#b55050 ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownH6 guifg=#b55050 ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownHeadingDelimiter guifg=#eb7f92 ctermfg=210 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownHeadingRule guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownId guifg=#c4a7e7 ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownIdDeclaration guifg=#b55050 ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownIdDelimiter guifg=#c4a7e7 ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownItalic guifg=#c4a7e7 ctermfg=182 guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi markdownLinkDelimiter guifg=#c4a7e7 ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownLinkText guifg=#b55050 ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownListMarker guifg=#eb7f92 ctermfg=210 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownOrdeloveListMarker guifg=#eb7f92 ctermfg=210 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownRule guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownUrl guifg=#9ccfd8 ctermfg=152 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi CocExplorerIndentLine guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerBufferRoot guifg=#9ccfd8 ctermfg=152 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerFileRoot guifg=#9ccfd8 ctermfg=152 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerBufferFullPath guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerFileFullPath guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerBufferReadonly guifg=#c4a7e7 ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerBufferModified guifg=#c4a7e7 ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerBufferNameVisible guifg=#ce9178 ctermfg=174 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerFileReadonly guifg=#c4a7e7 ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerFileModified guifg=#c4a7e7 ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerFileHidden guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerHelpLine guifg=#c4a7e7 ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi EasyMotionTarget guifg=#f44747 ctermfg=203 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi EasyMotionTarget2First guifg=#f44747 ctermfg=203 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi EasyMotionTarget2Second guifg=#f44747 ctermfg=203 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi EasyMotionShade guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyNumber guifg=#ebbcba ctermfg=217 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifySelect guifg=#608b4e ctermfg=65 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyBracket guifg=#b55050 ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifySpecial guifg=#9ccfd8 ctermfg=152 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyVar guifg=#b55050 ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyPath guifg=#eb7f92 ctermfg=210 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyFile guifg=#e7cde7 ctermfg=253 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifySlash guifg=#b55050 ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyHeader guifg=#817c9c ctermfg=103 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifySection guifg=#c4a7e7 ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyFooter guifg=#608b4e ctermfg=65 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi WhichKey guifg=#c4a7e7 ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi WhichKeySeperator guifg=#608b4e ctermfg=65 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi WhichKeyGroup guifg=#73ceff ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi WhichKeyDesc guifg=#b55050 ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffAdded guifg=#608b4e ctermfg=65 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffRemoved guifg=#eb7f92 ctermfg=210 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffFileId guifg=#b55050 ctermfg=131 guibg=NONE ctermbg=NONE gui=bold,reverse cterm=bold,reverse
hi diffFile guifg=#3b4048 ctermfg=238 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffNewFile guifg=#608b4e ctermfg=65 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffOldFile guifg=#eb7f92 ctermfg=210 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi debugPc guifg=NONE ctermfg=NONE guibg=#9ccfd8 ctermbg=152 gui=NONE cterm=NONE
hi debugBreakpoint guifg=#eb7f92 ctermfg=210 guibg=NONE ctermbg=NONE gui=reverse cterm=reverse
hi GitSignsAdd guifg=#587c0c ctermfg=64 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi GitSignsChange guifg=#0c7d9d ctermfg=31 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi GitSignsDelete guifg=#94151b ctermfg=88 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsUnderlineHint guifg=#286983 ctermfg=24 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsSignError guifg=#f44747 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsSignWarning guifg=#ff8800 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsSignInformation guifg=#ffcc66 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsSignHint guifg=#73ceff ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsVirtualTextError guifg=#f44747 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsVirtualTextWarning guifg=#ff8800 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsVirtualTextInformation guifg=#ffcc66 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsVirtualTextHint guifg=#73ceff ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi QuickScopePrimary guifg=#00c7df ctermfg=44 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi QuickScopeSecondary guifg=#ef5f70 ctermfg=203 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi MatchWord guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi MatchParen guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi MatchWordCur guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi MatchParenCur guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi NvimTreeImageFile guifg=#c4a7e7 ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NvimTreeGitDirty guifg=#81b88b ctermfg=108 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NvimTreeGitDeleted guifg=#81b88b ctermfg=108 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NvimTreeGitStaged guifg=#81b88b ctermfg=108 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NvimTreeGitMerge guifg=#81b88b ctermfg=108 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NvimTreeGitRenamed guifg=#81b88b ctermfg=108 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NvimTreeGitNew guifg=#81b88b ctermfg=108 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NvimTreeIndentMarker guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NvimTreeSymlink guifg=#29b8d8 ctermfg=38 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NvimTreeFolderIcon guifg=#b55050 ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NvimTreeRootFolder guifg=#e0def4 ctermfg=189 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi NvimTreeExecFile guifg=#69d1a7 ctermfg=79 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NvimTreeSpecialFile guifg=#ffcc66 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi BufferCurrent guifg=#e0def4 ctermfg=189 guibg=#191724 ctermbg=234 gui=NONE cterm=NONE
hi BufferCurrentIndex guifg=#b55050 ctermfg=131 guibg=#191724 ctermbg=234 gui=NONE cterm=NONE
hi BufferCurrentMod guifg=#e0def4 ctermfg=189 guibg=#191724 ctermbg=234 gui=NONE cterm=NONE
hi BufferCurrentSign guifg=#b55050 ctermfg=131 guibg=#191724 ctermbg=234 gui=NONE cterm=NONE
hi BufferCurrentTarget guifg=#eb7f92 ctermfg=210 guibg=#191724 ctermbg=234 gui=bold cterm=bold
hi BufferVisible guifg=#e0def4 ctermfg=189 guibg=#191724 ctermbg=234 gui=NONE cterm=NONE
hi BufferVisibleIndex guifg=#e0def4 ctermfg=189 guibg=#191724 ctermbg=234 gui=NONE cterm=NONE
hi BufferVisibleMod guifg=#e0def4 ctermfg=189 guibg=#191724 ctermbg=234 gui=NONE cterm=NONE
hi BufferVisibleSign guifg=#e0def4 ctermfg=189 guibg=#191724 ctermbg=234 gui=NONE cterm=NONE
hi BufferVisibleTarget guifg=#eb7f92 ctermfg=210 guibg=#191724 ctermbg=234 gui=bold cterm=bold
hi BufferInactive guifg=#858585 ctermfg=102 guibg=#2e2e2e ctermbg=236 gui=NONE cterm=NONE
hi BufferInactiveIndex guifg=#858585 ctermfg=102 guibg=#2e2e2e ctermbg=236 gui=NONE cterm=NONE
hi BufferInactiveMod guifg=#858585 ctermfg=102 guibg=#2e2e2e ctermbg=236 gui=NONE cterm=NONE
hi BufferInactiveSign guifg=#858585 ctermfg=102 guibg=#2e2e2e ctermbg=236 gui=NONE cterm=NONE
hi BufferInactiveTarget guifg=#eb7f92 ctermfg=210 guibg=#2e2e2e ctermbg=236 gui=bold cterm=bold
hi CodiVirtualText guifg=#6395ec ctermfg=69 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi IndentBlanklineContextChar guifg=#707070 ctermfg=242 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi VimwikiHeader1 guifg=#ce9178 ctermfg=174 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi VimwikiHeader2 guifg=#608b4e ctermfg=65 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi VimwikiHeader3 guifg=#b55050 ctermfg=131 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi VimwikiHeader4 guifg=#9ccfd8 ctermfg=152 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi VimwikiHeader5 guifg=#f6c177 ctermfg=216 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi VimwikiHeader6 guifg=#c4a7e7 ctermfg=182 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi VimwikiLink guifg=#73ceff ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi VimwikiHeaderChar guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi VimwikiHR guifg=#dea340 ctermfg=179 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi VimwikiList guifg=#ce9178 ctermfg=174 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi VimwikiTag guifg=#ce9178 ctermfg=174 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi VimwikiMarkers guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

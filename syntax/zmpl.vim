if exists("b:current_syntax")
  finish
endif

syn keyword htmlTagName a abbr acronym address applet area article aside audio b base basefont bdi bdo blockquote body br button canvas caption cite code col colgroup data datalist dd del details dfn div dl dt em embed fieldset figcaption figure footer form h1 h2 h3 h4 h5 h6 head header hr html i iframe img input ins kbd label legend li link main map mark menu meta nav noscript object ol optgroup option output p picture pre progress q rp rt ruby s samp script section select small span strong style sub summary sup table tbody td template textarea time title tr track u ul var video wbr
syn keyword zmplMode @html @zig @markdown \@for @partial @extend @args

syn match htmlAttrName /\w\+=/he=e-1 contained
syn match htmlAttrValue /"[^"]*"/ contains=zmplRef
syn match htmlComment /<!--\zs.\{-}\ze-->/ contained
syn match htmlDoctype /<!DOCTYPE\s\w+/ contained
syn match htmlEntity /\&\w+;/ contained
syn region htmlTag start='<\w\+' end='>' contains=htmlTagName,htmlAttrName,htmlAttrValue,htmlComment,htmlDoctype,htmlEntity
syn region zmplRef start='{{' end='}}'

hi def link zmplRef Identifier
hi def link zmplMode Keyword
hi def link htmlTagName Keyword
hi def link htmlAttrName Identifier
hi def link htmlAttrValue String
hi def link htmlComment Comment
hi def link htmlDoctype Type
hi def link htmlEntity Constant

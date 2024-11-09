if exists("b:current_syntax")
  finish
endif

syn keyword htmlTagName a abbr acronym address applet area article aside audio b
syn keyword htmlTagName base basefont bdi bdo blockquote body br button canvas caption cite code col colgroup data datalist dd del details dfn div dl dt em embed fieldset figcaption figure footer form h1 h2 h3 h4 h5 h6 head header hr html i iframe img input ins kbd label legend li link main map mark menu meta nav noscript object ol optgroup option output p picture pre progress q rp rt ruby s samp script section select small span strong style sub summary sup table tbody td template textarea time title tr track u ul var video wbr
syn keyword zmplMode @html @zig @markdown @for @partial @extend @args

syn match htmlAttrName /\w\+=/he=e-1 contained
syn match htmlAttrValue /"[^"]*"/ contained
syn match htmlComment /<!--\zs.\{-}\ze-->/ contained
syn match htmlDoctype /<!DOCTYPE\s\w+/ contained
syn match htmlEntity /\&\w+;/ contained
syn region htmlTag start='<\w\+' end='>' contains=htmlTagName,htmlAttrName,htmlAttrValue,htmlComment,htmlDoctype,htmlEntity
syn region zmplRef start='{{' end='}}'

highlight default link zmplRef Identifier
highlight default link zmplMode Keyword
highlight default link htmlTagName Keyword
highlight default link htmlAttrName Identifier
highlight default link htmlAttrValue String
highlight default link htmlComment Comment
highlight default link htmlDoctype Type
highlight default link htmlEntity Constant

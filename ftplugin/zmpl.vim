if exists("b:ftplugin_loaded")
  finish
endif

let b:ftplugin_loaded = 1

setlocal expandtab
setlocal tabstop=8
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal formatoptions-=t formatoptions+=croql
setlocal suffixesadd=.zmpl

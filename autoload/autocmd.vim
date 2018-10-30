
let g:lasttab = 1

function! GotoLastTab()
  try
    exe "tabn ".g:lasttab
  catch
    tabn 1
  endtry
endfun

au TabLeave * let g:lasttab = tabpagenr()

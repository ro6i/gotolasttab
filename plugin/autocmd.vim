
let g:lasttab = 1

function! JumpToLastTab()
  try
    exe "tabn ".g:lasttab
  catch
    tabn 1
  endtry
endfun

command! GotoLastTab call JumpToLastTab()

au TabLeave * let g:lasttab = tabpagenr()

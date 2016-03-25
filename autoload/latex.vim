function! latex#get_mainfile()
  
  echom "airline-latex is here"
  return Tex_GetMainFileName(':p:t')

endfunction

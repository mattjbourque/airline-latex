function! latex#get_mainfile()
 
  " I think Tex_GetMainFileName is supposed to take a filename modifier and
  " but it doesn't seem to work. Here, fnamemodify( ,':t') returns only the
  " filname rather than the full path.
  return fnamemodify(Tex_GetMainFileName(),':t:r')

endfunction

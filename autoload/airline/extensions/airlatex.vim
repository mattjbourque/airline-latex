" vim: et ts=2 sts=2 sw=2

" Due to some potential rendering issues, the use of the `space` variable is
" recommended.
let s:spc = g:airline_symbols.space

function! airline#extensions#airlatex#init(ext)

  call airline#parts#define_raw('MainFile', '%{airlatex#get_mainfile()}')
  call airline#parts#define_raw('Target', '%{Tex_GetTarget()}')

  call a:ext.add_statusline_func('airline#extensions#airlatex#apply')

endfunction

function! airline#extensions#airlatex#apply(...)
  if &filetype == "tex"

    let w:airline_section_c = get(w:, 'airline_section_c', g:airline_section_c)
    let w:airline_section_c .= s:spc.'('.'%{airlatex#get_target()}'.s:spc.'%{airlatex#get_mainfile()}'.')'
  endif
endfunction

" vim: et ts=2 sts=2 sw=2

" Due to some potential rendering issues, the use of the `space` variable is
" recommended.
let s:spc = g:airline_symbols.space

function! airline#extensions#latex#init(ext)

  call airline#parts#define_raw('MainFile', '%{latex#get_mainfile()}')
  call airline#parts#define_raw('Target', '%{Tex_GetTarget()}')

  call a:ext.add_statusline_func('airline#extensions#latex#apply')

endfunction

function! airline#extensions#latex#apply(...)
  if &filetype == "tex"

    let w:airline_section_c = get(w:, 'airline_section_c', g:airline_section_c)
    let w:airline_section_c .= s:spc.'(''%{Tex_GetTarget()'.s:spc.'%{latex#get_mainfile()}'.')'
  endif
endfunction

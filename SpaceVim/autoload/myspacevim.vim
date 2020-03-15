function! myspacevim#before() abort
  nnoremap fd <Esc>
endfunction

function! myspacevim#after() abort
  iunmap fd
endfunction


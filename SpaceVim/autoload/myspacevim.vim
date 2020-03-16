function! myspacevim#after() abort
  call SpaceVim#logger#info("bootstrap_after called")     " log bootstrap_after call
  inoremap fd <Esc>
  tnoremap fd <C-\><C-n>
endfunction

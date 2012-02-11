function! s:execute(cmd)
  let cmd = a:cmd
  if has("gui_win32")
    exe "!start ".cmd
  elseif !has("gui_running")
    silent exe '!'.cmd.' 2>&1 > /dev/null'
    exec ':redraw!'
  else
    silent exe '!'.cmd.' 2>&1 > /dev/null &'
  endif
  return v:shell_error
endfunction

function! rubydoc#search(type, keyword)
  let url = '"http://apidock.com/'.a:type.'/search/quick?query='.a:keyword.'"'
  call s:execute(g:ruby_doc_command.' '.url)
endfunction

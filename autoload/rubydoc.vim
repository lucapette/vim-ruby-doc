function! s:execute(cmd)
  let cmd = a:cmd
  if has("gui_win32")
    exe "!start ".cmd
  elseif !has("gui_running")
    silent exe '!'.cmd.' &> /dev/null'
    exec ':redraw!'
  else
    silent exe '!'.cmd.' &> /dev/null &'
  endif
  return v:shell_error
endfunction

function! rubydoc#search(type, keyword)
  if a:type == 'ruby'
    let url = g:ruby_doc_ruby_search_host
  elseif a:type == 'rspec'
    let url = g:ruby_doc_rspec_search_host
  elseif a:type == 'rails'
    let url = g:ruby_doc_rails_search_host
  endif
  let url = '"'.url.a:keyword.'"'
  call s:execute(g:ruby_doc_command.' '.url)
endfunction

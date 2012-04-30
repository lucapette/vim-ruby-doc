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
    let url = 'http://rubydoc.info/search/stdlib/core?q='
  elseif a:type == 'rspec'
    let url = 'https://www.relishapp.com/rspec/search?query='
  elseif a:type == 'rails'
    let url = 'http://api.rubyonrails.org/?q='
  endif
  let url = '"'.url.a:keyword.'"'
  call s:execute(g:ruby_doc_command.' '.url)
endfunction

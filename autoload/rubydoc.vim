function! rubydoc#search(type, keyword)
  let url = '"http://apidock.com/'.a:type.'/search/quick?query='.a:keyword.'"'
  call system(g:ruby_doc_command.' '.url)
endfunction

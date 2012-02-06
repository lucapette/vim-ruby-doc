" ruby-doc.vim - Browse Ruby/Rspec/Rails API with apidock.com
" Author:       Luca Pette <lucapette@gmail.com>
" Version:      0.1

if exists("g:loaded_ruby_doc")
  finish
endif
let g:loaded_ruby_doc = 1

if !exists('g:ruby_doc_command')
   let g:ruby_doc_command='xdg-open'
endif

if !exists('g:ruby_doc_ruby_mapping')
    let g:ruby_doc_ruby_mapping='RB'
endif

if !exists('g:ruby_doc_rspec_mapping')
    let g:ruby_doc_rspec_mapping='RS'
endif

if !exists('g:ruby_doc_rails_mapping')
    let g:ruby_doc_rails_mapping='RR'
endif

execute "noremap <silent> ".g:ruby_doc_ruby_mapping." :call rubydoc#search('ruby',expand('<cword>'))<CR>"
execute "noremap <silent> ".g:ruby_doc_rspec_mapping." :call rubydoc#search('rspec',expand('<cword>'))<CR>"
execute "noremap <silent> ".g:ruby_doc_rails_mapping." :call rubydoc#search('rails',expand('<cword>'))<CR>"

command! -narg=1 RubyDoc call rubydoc#search('ruby',<q-args>)
command! -narg=1 RspecDoc call rubydoc#search('rspec',<q-args>)
command! -narg=1 RailsDoc call rubydoc#search('rails',<q-args>)

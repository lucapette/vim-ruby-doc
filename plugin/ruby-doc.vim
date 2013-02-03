" ruby-doc.vim - Browse Ruby/Rspec/Rails API with apidock.com
" Author:       Luca Pette <lucapette@gmail.com>
" Version:      0.2

if exists("g:loaded_ruby_doc")
  finish
endif
let g:loaded_ruby_doc = 1

if !exists('g:ruby_doc_command')
   let g:ruby_doc_command='xdg-open'
endif

if !exists('g:ruby_doc_ruby_host')
    let g:ruby_doc_ruby_host='http://rubydoc.info/search/stdlib/core?q='
endif

if !exists('g:ruby_doc_rspec_host')
    let g:ruby_doc_rspec_host='https://www.relishapp.com/rspec/search?query='
endif

if !exists('g:ruby_doc_rails_host')
    let g:ruby_doc_rails_host='http://api.rubyonrails.org/?q='
endif

command! -narg=1 RubyDoc call rubydoc#search('ruby',<q-args>)
command! -narg=1 RspecDoc call rubydoc#search('rspec',<q-args>)
command! -narg=1 RailsDoc call rubydoc#search('rails',<q-args>)

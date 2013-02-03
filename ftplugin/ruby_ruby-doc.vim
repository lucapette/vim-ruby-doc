" ruby-doc.vim - Browse Ruby/Rspec/Rails API with apidock.com
" Author:       Luca Pette <lucapette@gmail.com>
" Version:      0.2

if !exists('g:ruby_doc_ruby_mapping')
    let g:ruby_doc_ruby_mapping='RB'
endif

if !exists('g:ruby_doc_rspec_mapping')
    let g:ruby_doc_rspec_mapping='RS'
endif

if !exists('g:ruby_doc_rails_mapping')
    let g:ruby_doc_rails_mapping='RR'
endif

execute "noremap <buffer><silent> ".g:ruby_doc_ruby_mapping." :call rubydoc#search('ruby',expand('<cword>'))<CR>"
execute "noremap <buffer><silent> ".g:ruby_doc_rspec_mapping." :call rubydoc#search('rspec',expand('<cword>'))<CR>"
execute "noremap <buffer><silent> ".g:ruby_doc_rails_mapping." :call rubydoc#search('rails',expand('<cword>'))<CR>"

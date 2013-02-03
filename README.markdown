vim-ruby-doc is a little plugin that helps you to look up documentation using
the following resources:

* *Ruby*

  [rubydoc.info](http://rubydoc.info/stdlib)

* *RSpec*

  [relishapp.com](http://www.relishapp.com/rspec)

* *Rails*

  [http://api.rubyonrails.org](http://api.rubyonrails.org)

If you want something similar for jQuery API documentation see
[vim-jquery-doc](http://github.com/lucapette/vim-jquery-doc).

Installation
------------

I strongly recommend installing [pathogen.vim](https://github.com/tpope/pathogen.vim).

    cd ~/.vim/bundle
    git clone git://github.com/lucapette/vim-ruby-doc.git

Or you can unzip it in your `~/.vim` directory.

How to use it
-------------

In Normal mode, when your cursor is on something you would look up type:

- `RB` for Ruby
- `RS` for RSpec
- `RR` for Rails

and the plugin will open a new tab in your browser (or a new instance of the
browser) to the related docs. See the following section for changing mappings.

Furthermore, the plugin defines the following commands for searching on the
command-line arbitrary stuff:

- `:RubyDoc`
- `:RspecDoc`
- `:RailsDoc`

Configure it
------------

By default, the plugin uses the
[xdg-open](http://portland.freedesktop.org/xdg-utils-1.0/xdg-open.html)
command to look up the docs but you can easily change the command. For
example, if you are on OSX you would like to change it:

    let g:ruby_doc_command='open'

Furthermore you can choose your own mapping in the following way:

    let g:ruby_doc_ruby_mapping='KK'

There are `g:ruby_doc_rspec_mapping` and `g:ruby_doc_rails_mapping` variables
too.

You can change where the plugin should search very easily:

    let g:ruby_doc_ruby_host='http://apidock.com/ruby/'

Contributors
------------

* [imajes](https://github.com/imajes)

  Include /doc/tags in .gitignore.

* [coffeejunk](https://github.com/coffeejunk)

  Move away from apidock.

* [sumskyi](https://github.com/sumskyi)

  Add configurable search host.

* [dhruvasagar](https://github.com/dhruvasagar)

  Moving mappings to filetype directory

License
-------

Copyright (c) Luca Pette. Distributed under the same terms as Vim itself. See `:help license`.

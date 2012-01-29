$LOAD_PATH.unshift File.join(File.dirname(__FILE__),'ruby')

require 'rake'
require 'find'
require 'pathname'

IGNORE_FILES = [/^\.gitignore$/, /^Rakefile$/,/^README.textile$/,/^zip/]

files = `git ls-files`.split("\n")
files.reject! { |f| IGNORE_FILES.any? { |re| f.match(re) } }
vim_dir=File.expand_path("~/.vim")

desc 'zip project'
task :zip do
  system("zip zip/vim-ruby-doc.zip #{files.join(" ")}")
end

desc 'pull from git repository'
task :pull do
  puts 'Updating from git repository'
  system("cd " << Dir.new(File.dirname(__FILE__)).path << " && git pull")
end

desc "install vim-ruby-doc in #{vim_dir} dir"
task :install do
  files.each do |file|
    if File.exists?(file)
      target_file = File.join(vim_dir, file)
      FileUtils.mkdir_p File.dirname(target_file)
      FileUtils.cp file, target_file

      puts "Installed #{file} to #{target_file}"
    else
      puts "#{file} removed?"
    end
  end
end

task default: :install

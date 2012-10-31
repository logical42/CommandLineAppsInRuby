require File.join([File.dirname(__FILE__),'lib','todo_version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'todo'
  s.version = Todo::VERSION

  s.author = 'Your Name Here'
  s.email = 'your@email.address.com'
  s.homepage = 'http://your.website.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A description of your project'
  #START:lib
  s.files = %w(
bin/todo.rb
lib/todo_version.rb
  )
  #START_HIGHLIGHT
  s.require_paths << 'lib'
  #END_HIGHLIGHT
  #END:lib
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','todo.rdoc']
  s.rdoc_options << '--title' << 'todo' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'todo.rb'
  s.add_development_dependency('aruba', '~> 0.4.6')
  s.add_dependency('main')
end

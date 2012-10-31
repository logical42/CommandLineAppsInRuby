require File.join([File.dirname(__FILE__),'lib','todo_version.rb'])
#START:aruba
spec = Gem::Specification.new do |s| 
  s.name = 'todo'
  s.version = Todo::VERSION

  # rest of the gemspec...
  
#END:aruba
  s.author = 'Your Name Here'
  s.email = 'your@email.address.com'
  s.homepage = 'http://your.website.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A description of your project'
# Add your other files here if you make them
  s.files = %w(
bin/todo
lib/todo_version.rb
  )
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','todo.rdoc']
  s.rdoc_options << '--title' << 'todo' << '--main' << 'README.rdoc' << '-ri'
#START:aruba
  s.bindir = 'bin'
  s.executables << 'todo'
  #START_HIGHLIGHT
  s.add_development_dependency('aruba', '~> 0.4.6')
  #END_HIGHLIGHT
  s.add_development_dependency('mocha')
  s.add_dependency('gli')
end
#END:aruba

#---
# Excerpted from "Build Awesome Command-Line Applications in Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/dccar for more book information.
#---
require 'aruba/cucumber'
require 'fileutils'

ENV['PATH'] = "#{File.expand_path(File.dirname(__FILE__) + '/../../bin')}#{File::PATH_SEPARATOR}#{ENV['PATH']}"
ENV['GLI_DEBUG'] = 'true'

Before do
  @real_home = ENV['HOME']
  fake_home = File.join('/tmp','fake_home')
  FileUtils.rm_rf fake_home, :secure => true
  ENV['HOME'] = fake_home
end

After do
  ENV['HOME'] = @real_home
  config_file = File.join('/tmp','.todo.rc.yaml')
  FileUtils.rm config_file if File.exists? config_file
end

#---
# Excerpted from "Build Awesome Command-Line Applications in Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/dccar for more book information.
#---
Given /^my terminal size is "([^"]*)"$/ do |terminal_size|
  if terminal_size =~/^(\d+)x(\d+)$/
    ENV['COLUMNS'] = $1
    ENV['LINES'] = $2
  else
    raise "Terminal size should be COLxLines, e.g. 80x24" 
  end
end

Given /^the following tasklist:$/ do |string|
  File.open("/tmp/todo.txt",'w') do |file|
    string.split(/\n/).each do |task|
      file.puts task
    end
  end
end

Given /^an empty tasklist in "([^"]*)"$/ do |file|
  FileUtils.rm(file) if File.exists? file
end

Given /^an existing tasklist in "([^"]*)"$/ do |file|
  FileUtils.rm(file) if File.exists?(file)
  File.open(file,'w') do |file|
    file.puts "Rake Leaves,2011-08-13 12:00:00 -0400"
    file.puts "Take Out Trash,2011-08-19 13:00:00 -0400"
  end
end

#!/usr/bin/env ruby
#---
# Excerpted from "Build Awesome Command-Line Applications in Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/dccar for more book information.
#---

$LOAD_PATH << File.expand_path(File.dirname(__FILE__) + '/../lib')
require 'rubygems'
require 'gli'
require 'todo_version'

include GLI

version Todo::VERSION

flag :f


desc ''
command :new do |c|

  c.flag :priority
  c.switch :f

  c.action do |global_options,options,args|
    puts "Global:"
    puts "-f - #{global_options[:f]}"
    puts "Command:"
    puts "-f - #{options[:f] ? 'true' : 'false'}"
    puts "-p - #{options[:p]}"
    puts "args - #{args.join(',')}"
  end
end

desc ''
command :list do |c|

  c.flag :s

  c.action do |global_options,options,args|
    puts "Global:"
    puts "-f - #{global_options[:f]}"
    puts "Command:"
    puts "-s - #{options[:s]}"
  end
end


desc ''
command :done do |c|
  c.action do |global_options,options,args|
    puts "Global:"
    puts "-f - #{global_options[:f]}"
  end
end

exit run(ARGV)

#!/usr/bin/env ruby

File.open('todo.txt', 'r+') do |file|
  # puts file.read
  
  text = file.read
  # puts text.inspect
  file.rewind
  file.puts("new_text")  
  file.puts(text +text)

end
#---
# Excerpted from "Build Awesome Command-Line Applications in Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/dccar for more book information.
#---
Given /^the current code is installed as a gem$/ do
  pending "gem-man doesn't work with this version of RubyGems"
  if system('rake build')
    if system('gem install pkg/db_backup-0.0.1.gem')
    else
      raise "Problem installing gem"
    end
  else
    raise "Problem creating gem"
  end
end


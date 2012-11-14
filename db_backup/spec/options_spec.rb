require 'spec_helper'
describe "options tests" do
  it 'should store the correct user option' do
    `bin/db_backup -t -u asdf asdfasdfa`.should match(/username=asdf/)
  end
  it 'should store the correct password option' do
    `bin/db_backup -t -p password asdfasdf`.should match(/password=password/)
  end
end
describe "a" do
  it 'asdfasdf' do
    true
  end
end
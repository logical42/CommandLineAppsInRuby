require 'spec_helper'
describe "options tests" do
  it 'should store the correct user option' do
    `bin/db_backup -t -u asdf`.should match(/username=asdf/)
  end
  it 'should store the correct password option' do
    `bin/db_backup -t -p password`.should match(/password=password/)
  end
end
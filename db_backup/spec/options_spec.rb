require 'spec_helper'
describe "options tests" do
  it 'should store the correct user option' do
    `bin/db_backup -u asdf`.should match(/./)
  end
end
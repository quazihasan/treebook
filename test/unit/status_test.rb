require 'test_helper'

class StatusTest < ActiveSupport::TestCase
  test "status requires a content" do
  	status  = Status.new
  	assert !status.save
  	assert !status.errors[:content].empty?
  end
  test "status's content must be at least 2 characters long" do
  	status  = Status.new
  	status.content = "H"
  	assert !status.save
  	assert !status.errors[:content].empty?
  end

  test "status must have a ser id" do
  	status  = Status.new
  	status.content = "Hello"
  	assert !status.save
  	assert !status.errors[:user_id].empty?
  end

end

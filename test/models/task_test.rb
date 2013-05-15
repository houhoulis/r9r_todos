require 'test_helper'

class TaskTest < ActiveSupport::TestCase

  test "should require a description" do
    task = Task.new
    refute task.valid?, 'should be valid'
    assert task.errors[:description].any?, 'should have an error'
  end

  test "should require a unique description" do
    Task.create(description: 'Hello')
    task = Task.new(description: 'Hello')
    refute task.valid?, 'should be valid'
    assert_match /already been taken/, task.errors[:description].first
  end

end

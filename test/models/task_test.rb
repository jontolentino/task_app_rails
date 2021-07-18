require "test_helper"

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "task name and content should not be empty" do
   
    @cat = Category.first
    task = @cat.tasks.build(name: "jon", content: "wow")
    assert task.save
  end


end

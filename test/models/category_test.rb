require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  # test "category must have a name" do
  #   cat = Category.create(:name "")
  #   assert true
  # end

  test "name should not be empty"
    cat = Category.new(:one)
    assert cat.save
  end
end

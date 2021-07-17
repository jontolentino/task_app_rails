require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  # test "category must have a name" do
  #   cat = Category.create(:name "")
  #   assert true
  # end
  # setup do 
  #   users(:one).password = "123"
  # end

  test "name should not be empty" do
    # cat = Category.new
    # assert_raises(NoMethodError) do
    #   cat = Category.new(name: "jon")
    #   cat.save
    # end
    @user = User.first
    cat = @user.categories.create(name: "jon")
    assert cat.save
  end

end

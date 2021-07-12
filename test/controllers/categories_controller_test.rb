require 'test-helper'

class CategoryControllerTest < ActionDispatch::IntegrationTest
    setup do
        @category = categories(:one)
    end

    test "should get index" do
        get categories_index_url
        assert_response :success
    end

end
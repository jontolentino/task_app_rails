require "test_helper"

class UserLoginedFlowTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  # test "can see the gogotask title"
  #   get '/'
  #   assert true
  # end
  test "can login" do
    get "/users/sign_in"
    post user_session_path, params: {user: {
      email: users(:one).email,
      password: "password"
    }}

    assert_response :success
  end


end

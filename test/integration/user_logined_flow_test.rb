require "test_helper"

class UserLoginedFlowTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  fixtures :users
  # USER RELATED
  test "user sign in" do
    sign_in users(:one)
    get "/"
    assert_response :success
  end

  test "user sign out" do
    sign_in users(:one)
    get "/"
    delete "/users/sign_out"
    assert_response :redirect
    follow_redirect!
    get "/users/sign_in"
    assert_response :success
  end

  # CATEGORY RELATED
  test "create a category" do
    sign_in users(:one)
    get "/"
    post "/categories/new", params: { category: {
      name: "Test Category"
    }}
    assert_response :redirect
    follow_redirect!
    assert_response :success
  end

  test "delete a category" do
    sign_in users(:one)
    get "/"
    post "/categories/new", params: { category: {
      name: "Test Category"
    }}
    assert_response :redirect
    follow_redirect!
    assert_response :success

    get "/"
    delete "/test-category"
    assert_response :redirect
    follow_redirect!
    assert_response :success
  end

  test "show a category" do
    sign_in users(:one)
    get "/"
    post "/categories/new", params: { category: {
      name: "Test Category"
    }}
    assert_response :redirect
    follow_redirect!
    assert_response :success

    get "/test-category"
    assert_response :success
  end

  # TASK TEST
  test "create a task" do
    sign_in users(:one)
    get "/"
    post "/categories/new", params: { category: {
      name: "Test Category"
    }}
    assert_response :redirect
    follow_redirect!
    assert_response :success

    post "/test-category", params: { task: {
      name: "Task Name", content: "Task Content"
    }}
    assert_response :redirect
    follow_redirect!
    assert_response :success
  end


  

    # assert_select "h2", {:text => "Log in"}
    # assert_response :success

    # assert_select "a", {:text => "Logout"}
    # assert_response :success
    

    
    # get destroy_user_session_path
    # assert_select "a", {:text => "Sign up"}
    # assert_response :success
  # end


  # test "the truth" do
  #   assert true
  # end
  # test "can see the gogotask title"
  #   get '/'
  #   assert true
  # end
  # test "can login" do
    # get '/categories'
    # assert_response :redirect
    # follow_redirect!
    # assert_response :success
    # setup do 
    #   @user = users(:one)
    #   @user.save
    # end

    # get "/"
    # assert_response :success
    # get "/users"
    # assert_response :redirect
    # follow_redirect!
    # assert_response :success

    # post "/users/sign_in", params: {
    #   email: users(:one).email,
    #   password: "password"
    # }
    # get "/"
    # assert_response :success

    # sign_in(@user)
    # get "/"
    # assert_response :success


    # assert_response :redirect
    # follow_redirect!

    # assert_select "a", {:text => "Sign up"}


    # get "/"
    # assert_select "span", {:text => "Welcome"}
    # assert_response :success
  # end

  # test "assert select test" do
  #   get "/users/sign_in"
    
  #   # assert_select "a", {:text => "Sign up"}
  #   assert_select "span", {:text => "Welcome"}
  #   assert_response :success
    
  # end

  # test "can logout" do
  #   get "/users/sign_in"
  #   post user_session_path, params: {user: {
  #     email: users(:one).email,
  #     password: "password"
  #   }}
  #   # assert_response :redirect
  #   # follow_redirect!
  #   # assert_response :success
  #   # follow_redirect!
  #   get "/"
  #   delete destroy_user_session_path
  #   # assert_select "h2", "All"
  #   # assert_response :success
  # end

  # test "is logout?" do
  
  #   delete "/users/sign_out/"
  
  
  # end


end

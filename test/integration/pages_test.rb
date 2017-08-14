require 'test_helper'

class PagesTest < ActionDispatch::IntegrationTest
  
  test "testing the home page" do
    get pages_home_url
    assert_response :success
  end
  
  test "Test project page" do
    get projects_new_url
    assert_response :success
  end
  
  test "Test task page" do
    get tasks_new_url
    assert_response :success
  end
end
require 'test_helper'

class PagesTest < ActionDispatch::IntegrationTest
  
  test "testing the home page" do
    get pages_home_url
    assert_response :success
  end
  
  test "Test project page" do
    get pages_project_url
    assert_response :success
  end
  
  test "Test task page" do
    get pages_task_url
    assert_response :success
  end
end
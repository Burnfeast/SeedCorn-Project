require 'test_helper'

class TeacherPagesControllerTest < ActionController::TestCase
  test "should get Home" do
    get :Home
    assert_response :success
  end

  test "should get Create" do
    get :Create
    assert_response :success
  end

  test "should get StudentList" do
    get :StudentList
    assert_response :success
  end

  test "should get StudentInfo" do
    get :StudentInfo
    assert_response :success
  end

end

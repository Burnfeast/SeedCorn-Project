require 'test_helper'

class StudentPagesControllerTest < ActionController::TestCase
  test "should get Home" do
    get :Home
    assert_response :success
  end

  test "should get Weather" do
    get :Weather
    assert_response :success
  end

  test "should get Timeline" do
    get :Timeline
    assert_response :success
  end

  test "should get History" do
    get :History
    assert_response :success
  end

  test "should get ExtraResources" do
    get :ExtraResources
    assert_response :success
  end

end

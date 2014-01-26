require 'test_helper'

class MainControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get links" do
    get :links
    assert_response :success
  end

  test "should get events" do
    get :events
    assert_response :success
  end

end

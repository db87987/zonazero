require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get kit" do
    get :kit
    assert_response :success
  end

  test "should get order" do
    get :order
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end

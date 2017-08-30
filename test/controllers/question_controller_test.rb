require 'test_helper'

class QuestionControllerTest < ActionController::TestCase
  test "should get write" do
    get :write
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

  test "should get update" do
    get :update
    assert_response :success
  end

  test "should get update_view" do
    get :update_view
    assert_response :success
  end

end

require 'test_helper'

class InformationErrorsControllerTest < ActionController::TestCase
  setup do
    @information_error = information_errors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:information_errors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create information_error" do
    assert_difference('InformationError.count') do
      post :create, information_error: {  }
    end

    assert_redirected_to information_error_path(assigns(:information_error))
  end

  test "should show information_error" do
    get :show, id: @information_error
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @information_error
    assert_response :success
  end

  test "should update information_error" do
    put :update, id: @information_error, information_error: {  }
    assert_redirected_to information_error_path(assigns(:information_error))
  end

  test "should destroy information_error" do
    assert_difference('InformationError.count', -1) do
      delete :destroy, id: @information_error
    end

    assert_redirected_to information_errors_path
  end
end

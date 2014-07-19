require 'test_helper'

class MasterTablesControllerTest < ActionController::TestCase
  setup do
    @master_table = master_tables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:master_tables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create master_table" do
    assert_difference('MasterTable.count') do
      post :create, master_table: {  }
    end

    assert_redirected_to master_table_path(assigns(:master_table))
  end

  test "should show master_table" do
    get :show, id: @master_table
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @master_table
    assert_response :success
  end

  test "should update master_table" do
    put :update, id: @master_table, master_table: {  }
    assert_redirected_to master_table_path(assigns(:master_table))
  end

  test "should destroy master_table" do
    assert_difference('MasterTable.count', -1) do
      delete :destroy, id: @master_table
    end

    assert_redirected_to master_tables_path
  end
end

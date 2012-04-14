require 'test_helper'

class ServAdicionalesControllerTest < ActionController::TestCase
  setup do
    @serv_adicionale = serv_adicionales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:serv_adicionales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create serv_adicionale" do
    assert_difference('ServAdicionale.count') do
      post :create, serv_adicionale: @serv_adicionale.attributes
    end

    assert_redirected_to serv_adicionale_path(assigns(:serv_adicionale))
  end

  test "should show serv_adicionale" do
    get :show, id: @serv_adicionale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @serv_adicionale
    assert_response :success
  end

  test "should update serv_adicionale" do
    put :update, id: @serv_adicionale, serv_adicionale: @serv_adicionale.attributes
    assert_redirected_to serv_adicionale_path(assigns(:serv_adicionale))
  end

  test "should destroy serv_adicionale" do
    assert_difference('ServAdicionale.count', -1) do
      delete :destroy, id: @serv_adicionale
    end

    assert_redirected_to serv_adicionales_path
  end
end

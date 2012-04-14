require 'test_helper'

class Personas2sControllerTest < ActionController::TestCase
  setup do
    @personas2 = personas2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personas2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personas2" do
    assert_difference('Personas2.count') do
      post :create, personas2: @personas2.attributes
    end

    assert_redirected_to personas2_path(assigns(:personas2))
  end

  test "should show personas2" do
    get :show, id: @personas2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personas2
    assert_response :success
  end

  test "should update personas2" do
    put :update, id: @personas2, personas2: @personas2.attributes
    assert_redirected_to personas2_path(assigns(:personas2))
  end

  test "should destroy personas2" do
    assert_difference('Personas2.count', -1) do
      delete :destroy, id: @personas2
    end

    assert_redirected_to personas2s_path
  end
end

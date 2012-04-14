require 'test_helper'

class TurnosControllerTest < ActionController::TestCase
  setup do
    @turno = turnos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:turnos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create turno" do
    assert_difference('Turno.count') do
      post :create, turno: @turno.attributes
    end

    assert_redirected_to turno_path(assigns(:turno))
  end

  test "should show turno" do
    get :show, id: @turno
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @turno
    assert_response :success
  end

  test "should update turno" do
    put :update, id: @turno, turno: @turno.attributes
    assert_redirected_to turno_path(assigns(:turno))
  end

  test "should destroy turno" do
    assert_difference('Turno.count', -1) do
      delete :destroy, id: @turno
    end

    assert_redirected_to turnos_path
  end
end

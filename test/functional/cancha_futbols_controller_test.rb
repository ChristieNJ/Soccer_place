require 'test_helper'

class CanchaFutbolsControllerTest < ActionController::TestCase
  setup do
    @cancha_futbol = cancha_futbols(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cancha_futbols)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cancha_futbol" do
    assert_difference('CanchaFutbol.count') do
      post :create, cancha_futbol: @cancha_futbol.attributes
    end

    assert_redirected_to cancha_futbol_path(assigns(:cancha_futbol))
  end

  test "should show cancha_futbol" do
    get :show, id: @cancha_futbol
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cancha_futbol
    assert_response :success
  end

  test "should update cancha_futbol" do
    put :update, id: @cancha_futbol, cancha_futbol: @cancha_futbol.attributes
    assert_redirected_to cancha_futbol_path(assigns(:cancha_futbol))
  end

  test "should destroy cancha_futbol" do
    assert_difference('CanchaFutbol.count', -1) do
      delete :destroy, id: @cancha_futbol
    end

    assert_redirected_to cancha_futbols_path
  end
end

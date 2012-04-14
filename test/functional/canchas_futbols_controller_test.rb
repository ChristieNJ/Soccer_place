require 'test_helper'

class CanchasFutbolsControllerTest < ActionController::TestCase
  setup do
    @canchas_futbol = canchas_futbols(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:canchas_futbols)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create canchas_futbol" do
    assert_difference('CanchasFutbol.count') do
      post :create, canchas_futbol: @canchas_futbol.attributes
    end

    assert_redirected_to canchas_futbol_path(assigns(:canchas_futbol))
  end

  test "should show canchas_futbol" do
    get :show, id: @canchas_futbol
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @canchas_futbol
    assert_response :success
  end

  test "should update canchas_futbol" do
    put :update, id: @canchas_futbol, canchas_futbol: @canchas_futbol.attributes
    assert_redirected_to canchas_futbol_path(assigns(:canchas_futbol))
  end

  test "should destroy canchas_futbol" do
    assert_difference('CanchasFutbol.count', -1) do
      delete :destroy, id: @canchas_futbol
    end

    assert_redirected_to canchas_futbols_path
  end
end

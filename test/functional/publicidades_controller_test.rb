require 'test_helper'

class PublicidadesControllerTest < ActionController::TestCase
  setup do
    @publicidade = publicidades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:publicidades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create publicidade" do
    assert_difference('Publicidade.count') do
      post :create, publicidade: @publicidade.attributes
    end

    assert_redirected_to publicidade_path(assigns(:publicidade))
  end

  test "should show publicidade" do
    get :show, id: @publicidade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @publicidade
    assert_response :success
  end

  test "should update publicidade" do
    put :update, id: @publicidade, publicidade: @publicidade.attributes
    assert_redirected_to publicidade_path(assigns(:publicidade))
  end

  test "should destroy publicidade" do
    assert_difference('Publicidade.count', -1) do
      delete :destroy, id: @publicidade
    end

    assert_redirected_to publicidades_path
  end
end

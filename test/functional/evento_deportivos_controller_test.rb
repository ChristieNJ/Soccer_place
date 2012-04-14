require 'test_helper'

class EventoDeportivosControllerTest < ActionController::TestCase
  setup do
    @evento_deportivo = evento_deportivos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:evento_deportivos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create evento_deportivo" do
    assert_difference('EventoDeportivo.count') do
      post :create, evento_deportivo: @evento_deportivo.attributes
    end

    assert_redirected_to evento_deportivo_path(assigns(:evento_deportivo))
  end

  test "should show evento_deportivo" do
    get :show, id: @evento_deportivo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @evento_deportivo
    assert_response :success
  end

  test "should update evento_deportivo" do
    put :update, id: @evento_deportivo, evento_deportivo: @evento_deportivo.attributes
    assert_redirected_to evento_deportivo_path(assigns(:evento_deportivo))
  end

  test "should destroy evento_deportivo" do
    assert_difference('EventoDeportivo.count', -1) do
      delete :destroy, id: @evento_deportivo
    end

    assert_redirected_to evento_deportivos_path
  end
end

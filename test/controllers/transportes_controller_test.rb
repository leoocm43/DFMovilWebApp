require 'test_helper'

class TransportesControllerTest < ActionController::TestCase
  setup do
    @transporte = transportes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transportes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transporte" do
    assert_difference('Transporte.count') do
      post :create, transporte: { latitude: @transporte.latitude, longitude: @transporte.longitude, organismo: @transporte.organismo, parada: @transporte.parada, ruta: @transporte.ruta }
    end

    assert_redirected_to transporte_path(assigns(:transporte))
  end

  test "should show transporte" do
    get :show, id: @transporte
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transporte
    assert_response :success
  end

  test "should update transporte" do
    patch :update, id: @transporte, transporte: { latitude: @transporte.latitude, longitude: @transporte.longitude, organismo: @transporte.organismo, parada: @transporte.parada, ruta: @transporte.ruta }
    assert_redirected_to transporte_path(assigns(:transporte))
  end

  test "should destroy transporte" do
    assert_difference('Transporte.count', -1) do
      delete :destroy, id: @transporte
    end

    assert_redirected_to transportes_path
  end
end

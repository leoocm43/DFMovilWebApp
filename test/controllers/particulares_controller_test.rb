require 'test_helper'

class ParticularesControllerTest < ActionController::TestCase
  setup do
    @particulare = particulares(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:particulares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create particulare" do
    assert_difference('Particulare.count') do
      post :create, particulare: { infracciones: @particulare.infracciones, placa: @particulare.placa, tenencias: @particulare.tenencias, verificaciones: @particulare.verificaciones }
    end

    assert_redirected_to particulare_path(assigns(:particulare))
  end

  test "should show particulare" do
    get :show, id: @particulare
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @particulare
    assert_response :success
  end

  test "should update particulare" do
    patch :update, id: @particulare, particulare: { infracciones: @particulare.infracciones, placa: @particulare.placa, tenencias: @particulare.tenencias, verificaciones: @particulare.verificaciones }
    assert_redirected_to particulare_path(assigns(:particulare))
  end

  test "should destroy particulare" do
    assert_difference('Particulare.count', -1) do
      delete :destroy, id: @particulare
    end

    assert_redirected_to particulares_path
  end
end

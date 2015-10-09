require 'test_helper'

class Transportes::TrenLigeroControllerTest < ActionController::TestCase
  test "should get show_tren_ligero" do
    get :show_tren_ligero
    assert_response :success
  end

end

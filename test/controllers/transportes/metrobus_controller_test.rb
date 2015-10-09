require 'test_helper'

class Transportes::MetrobusControllerTest < ActionController::TestCase
  test "should get show_metrobus" do
    get :show_metrobus
    assert_response :success
  end

end

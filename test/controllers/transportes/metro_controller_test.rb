require 'test_helper'

class Transportes::MetroControllerTest < ActionController::TestCase
  test "should get show_metro" do
    get :show_metro
    assert_response :success
  end

end

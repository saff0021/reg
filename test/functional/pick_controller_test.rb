require 'test_helper'

class PickControllerTest < ActionController::TestCase
  test "should get pview" do
    get :pview
    assert_response :success
  end

end

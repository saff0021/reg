require 'test_helper'

class ChartControllerTest < ActionController::TestCase
  test "should get cview" do
    get :cview
    assert_response :success
  end

end

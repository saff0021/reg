require 'test_helper'

class PitchersControllerTest < ActionController::TestCase
  setup do
    @pitcher = pitchers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pitchers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pitcher" do
    assert_difference('Pitcher.count') do
      post :create, pitcher: @pitcher.attributes
    end

    assert_redirected_to pitcher_path(assigns(:pitcher))
  end

  test "should show pitcher" do
    get :show, id: @pitcher.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pitcher.to_param
    assert_response :success
  end

  test "should update pitcher" do
    put :update, id: @pitcher.to_param, pitcher: @pitcher.attributes
    assert_redirected_to pitcher_path(assigns(:pitcher))
  end

  test "should destroy pitcher" do
    assert_difference('Pitcher.count', -1) do
      delete :destroy, id: @pitcher.to_param
    end

    assert_redirected_to pitchers_path
  end
end

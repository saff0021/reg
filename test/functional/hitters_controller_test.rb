require 'test_helper'

class HittersControllerTest < ActionController::TestCase
  setup do
    @hitter = hitters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hitters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hitter" do
    assert_difference('Hitter.count') do
      post :create, hitter: @hitter.attributes
    end

    assert_redirected_to hitter_path(assigns(:hitter))
  end

  test "should show hitter" do
    get :show, id: @hitter.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hitter.to_param
    assert_response :success
  end

  test "should update hitter" do
    put :update, id: @hitter.to_param, hitter: @hitter.attributes
    assert_redirected_to hitter_path(assigns(:hitter))
  end

  test "should destroy hitter" do
    assert_difference('Hitter.count', -1) do
      delete :destroy, id: @hitter.to_param
    end

    assert_redirected_to hitters_path
  end
end

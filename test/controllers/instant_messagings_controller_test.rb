require 'test_helper'

class InstantMessagingsControllerTest < ActionController::TestCase
  setup do
    @instant_messaging = instant_messagings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instant_messagings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instant_messaging" do
    assert_difference('InstantMessaging.count') do
      post :create, instant_messaging: { address: @instant_messaging.address, type: @instant_messaging.type }
    end

    assert_redirected_to instant_messaging_path(assigns(:instant_messaging))
  end

  test "should show instant_messaging" do
    get :show, id: @instant_messaging
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @instant_messaging
    assert_response :success
  end

  test "should update instant_messaging" do
    patch :update, id: @instant_messaging, instant_messaging: { address: @instant_messaging.address, type: @instant_messaging.type }
    assert_redirected_to instant_messaging_path(assigns(:instant_messaging))
  end

  test "should destroy instant_messaging" do
    assert_difference('InstantMessaging.count', -1) do
      delete :destroy, id: @instant_messaging
    end

    assert_redirected_to instant_messagings_path
  end
end

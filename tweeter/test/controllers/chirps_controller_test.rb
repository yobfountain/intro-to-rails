require 'test_helper'

class ChirpsControllerTest < ActionController::TestCase
  setup do
    @chirp = chirps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chirps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chirp" do
    assert_difference('Chirp.count') do
      post :create, chirp: { body: @chirp.body, user_id: @chirp.user_id }
    end

    assert_redirected_to chirp_path(assigns(:chirp))
  end

  test "should show chirp" do
    get :show, id: @chirp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chirp
    assert_response :success
  end

  test "should update chirp" do
    patch :update, id: @chirp, chirp: { body: @chirp.body, user_id: @chirp.user_id }
    assert_redirected_to chirp_path(assigns(:chirp))
  end

  test "should destroy chirp" do
    assert_difference('Chirp.count', -1) do
      delete :destroy, id: @chirp
    end

    assert_redirected_to chirps_path
  end
end

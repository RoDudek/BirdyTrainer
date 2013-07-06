require 'test_helper'

class BirdyVoicesControllerTest < ActionController::TestCase
  setup do
    @birdy_voice = birdy_voices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:birdy_voices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create birdy_voice" do
    assert_difference('BirdyVoice.count') do
      post :create, birdy_voice: { name: @birdy_voice.name, voice: @birdy_voice.voice }
    end

    assert_redirected_to birdy_voice_path(assigns(:birdy_voice))
  end

  test "should show birdy_voice" do
    get :show, id: @birdy_voice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @birdy_voice
    assert_response :success
  end

  test "should update birdy_voice" do
    put :update, id: @birdy_voice, birdy_voice: { name: @birdy_voice.name, voice: @birdy_voice.voice }
    assert_redirected_to birdy_voice_path(assigns(:birdy_voice))
  end

  test "should destroy birdy_voice" do
    assert_difference('BirdyVoice.count', -1) do
      delete :destroy, id: @birdy_voice
    end

    assert_redirected_to birdy_voices_path
  end
end

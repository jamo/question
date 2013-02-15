require 'test_helper'

class RadioButtonOptionsControllerTest < ActionController::TestCase
  setup do
    @radio_button_option = radio_button_options(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:radio_button_options)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create radio_button_option" do
    assert_difference('RadioButtonOption.count') do
      post :create, radio_button_option: { title: @radio_button_option.title }
    end

    assert_redirected_to radio_button_option_path(assigns(:radio_button_option))
  end

  test "should show radio_button_option" do
    get :show, id: @radio_button_option
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @radio_button_option
    assert_response :success
  end

  test "should update radio_button_option" do
    put :update, id: @radio_button_option, radio_button_option: { title: @radio_button_option.title }
    assert_redirected_to radio_button_option_path(assigns(:radio_button_option))
  end

  test "should destroy radio_button_option" do
    assert_difference('RadioButtonOption.count', -1) do
      delete :destroy, id: @radio_button_option
    end

    assert_redirected_to radio_button_options_path
  end
end

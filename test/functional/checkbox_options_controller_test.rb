require 'test_helper'

class CheckboxOptionsControllerTest < ActionController::TestCase
  setup do
    @checkbox_option = checkbox_options(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:checkbox_options)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create checkbox_option" do
    assert_difference('CheckboxOption.count') do
      post :create, checkbox_option: { title: @checkbox_option.title }
    end

    assert_redirected_to checkbox_option_path(assigns(:checkbox_option))
  end

  test "should show checkbox_option" do
    get :show, id: @checkbox_option
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @checkbox_option
    assert_response :success
  end

  test "should update checkbox_option" do
    put :update, id: @checkbox_option, checkbox_option: { title: @checkbox_option.title }
    assert_redirected_to checkbox_option_path(assigns(:checkbox_option))
  end

  test "should destroy checkbox_option" do
    assert_difference('CheckboxOption.count', -1) do
      delete :destroy, id: @checkbox_option
    end

    assert_redirected_to checkbox_options_path
  end
end

require 'test_helper'

class RadioButtonGroupsControllerTest < ActionController::TestCase
  setup do
    @radio_button_group = radio_button_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:radio_button_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create radio_button_group" do
    assert_difference('RadioButtonGroup.count') do
      post :create, radio_button_group: { title: @radio_button_group.title }
    end

    assert_redirected_to radio_button_group_path(assigns(:radio_button_group))
  end

  test "should show radio_button_group" do
    get :show, id: @radio_button_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @radio_button_group
    assert_response :success
  end

  test "should update radio_button_group" do
    put :update, id: @radio_button_group, radio_button_group: { title: @radio_button_group.title }
    assert_redirected_to radio_button_group_path(assigns(:radio_button_group))
  end

  test "should destroy radio_button_group" do
    assert_difference('RadioButtonGroup.count', -1) do
      delete :destroy, id: @radio_button_group
    end

    assert_redirected_to radio_button_groups_path
  end
end

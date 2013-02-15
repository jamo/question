require 'test_helper'

class CheckboxGroupsControllerTest < ActionController::TestCase
  setup do
    @checkbox_group = checkbox_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:checkbox_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create checkbox_group" do
    assert_difference('CheckboxGroup.count') do
      post :create, checkbox_group: { title: @checkbox_group.title }
    end

    assert_redirected_to checkbox_group_path(assigns(:checkbox_group))
  end

  test "should show checkbox_group" do
    get :show, id: @checkbox_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @checkbox_group
    assert_response :success
  end

  test "should update checkbox_group" do
    put :update, id: @checkbox_group, checkbox_group: { title: @checkbox_group.title }
    assert_redirected_to checkbox_group_path(assigns(:checkbox_group))
  end

  test "should destroy checkbox_group" do
    assert_difference('CheckboxGroup.count', -1) do
      delete :destroy, id: @checkbox_group
    end

    assert_redirected_to checkbox_groups_path
  end
end

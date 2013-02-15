require 'test_helper'

class BaseQuestionsControllerTest < ActionController::TestCase
  setup do
    @base_question = base_questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:base_questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create base_question" do
    assert_difference('BaseQuestion.count') do
      post :create, base_question: { title: @base_question.title }
    end

    assert_redirected_to base_question_path(assigns(:base_question))
  end

  test "should show base_question" do
    get :show, id: @base_question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @base_question
    assert_response :success
  end

  test "should update base_question" do
    put :update, id: @base_question, base_question: { title: @base_question.title }
    assert_redirected_to base_question_path(assigns(:base_question))
  end

  test "should destroy base_question" do
    assert_difference('BaseQuestion.count', -1) do
      delete :destroy, id: @base_question
    end

    assert_redirected_to base_questions_path
  end
end

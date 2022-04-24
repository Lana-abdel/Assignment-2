require 'test_helper'

class Quiz1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quiz1 = quiz1s(:one)
  end

  test "should get index" do
    get quiz1s_url
    assert_response :success
  end

  test "should get new" do
    get new_quiz1_url
    assert_response :success
  end

  test "should create quiz1" do
    assert_difference('Quiz1.count') do
      post quiz1s_url, params: { quiz1: { answer_1: @quiz1.answer_1, distractor_11: @quiz1.distractor_11, distractor_21: @quiz1.distractor_21 } }
    end

    assert_redirected_to quiz1_url(Quiz1.last)
  end

  test "should show quiz1" do
    get quiz1_url(@quiz1)
    assert_response :success
  end

  test "should get edit" do
    get edit_quiz1_url(@quiz1)
    assert_response :success
  end

  test "should update quiz1" do
    patch quiz1_url(@quiz1), params: { quiz1: { answer_1: @quiz1.answer_1, distractor_11: @quiz1.distractor_11, distractor_21: @quiz1.distractor_21 } }
    assert_redirected_to quiz1_url(@quiz1)
  end

  test "should destroy quiz1" do
    assert_difference('Quiz1.count', -1) do
      delete quiz1_url(@quiz1)
    end

    assert_redirected_to quiz1s_url
  end
end

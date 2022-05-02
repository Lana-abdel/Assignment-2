require 'test_helper'

class HelpquizzesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @helpquiz = helpquizzes(:one)
  end

  test "should get index" do
    get helpquizzes_url
    assert_response :success
  end

  test "should get new" do
    get new_helpquiz_url
    assert_response :success
  end

  test "should create helpquiz" do
    assert_difference('Helpquiz.count') do
      post helpquizzes_url, params: { helpquiz: { answer_1: @helpquiz.answer_1, answer_2: @helpquiz.answer_2, answer_3: @helpquiz.answer_3, answer_4: @helpquiz.answer_4, answer_5: @helpquiz.answer_5, answer_6: @helpquiz.answer_6, answer_7: @helpquiz.answer_7 } }
    end

    assert_redirected_to helpquiz_url(Helpquiz.last)
  end

  test "should show helpquiz" do
    get helpquiz_url(@helpquiz)
    assert_response :success
  end

  test "should get edit" do
    get edit_helpquiz_url(@helpquiz)
    assert_response :success
  end

  test "should update helpquiz" do
    patch helpquiz_url(@helpquiz), params: { helpquiz: { answer_1: @helpquiz.answer_1, answer_2: @helpquiz.answer_2, answer_3: @helpquiz.answer_3, answer_4: @helpquiz.answer_4, answer_5: @helpquiz.answer_5, answer_6: @helpquiz.answer_6, answer_7: @helpquiz.answer_7 } }
    assert_redirected_to helpquiz_url(@helpquiz)
  end

  test "should destroy helpquiz" do
    assert_difference('Helpquiz.count', -1) do
      delete helpquiz_url(@helpquiz)
    end

    assert_redirected_to helpquizzes_url
  end
end

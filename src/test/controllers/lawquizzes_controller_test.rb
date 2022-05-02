require 'test_helper'

class LawquizzesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lawquiz = lawquizzes(:one)
  end

  test "should get index" do
    get lawquizzes_url
    assert_response :success
  end

  test "should get new" do
    get new_lawquiz_url
    assert_response :success
  end

  test "should create lawquiz" do
    assert_difference('Lawquiz.count') do
      post lawquizzes_url, params: { lawquiz: { answer_1: @lawquiz.answer_1, answer_2: @lawquiz.answer_2, answer_3: @lawquiz.answer_3, answer_4: @lawquiz.answer_4, answer_5: @lawquiz.answer_5, answer_6: @lawquiz.answer_6, answer_7: @lawquiz.answer_7 } }
    end

    assert_redirected_to lawquiz_url(Lawquiz.last)
  end

  test "should show lawquiz" do
    get lawquiz_url(@lawquiz)
    assert_response :success
  end

  test "should get edit" do
    get edit_lawquiz_url(@lawquiz)
    assert_response :success
  end

  test "should update lawquiz" do
    patch lawquiz_url(@lawquiz), params: { lawquiz: { answer_1: @lawquiz.answer_1, answer_2: @lawquiz.answer_2, answer_3: @lawquiz.answer_3, answer_4: @lawquiz.answer_4, answer_5: @lawquiz.answer_5, answer_6: @lawquiz.answer_6, answer_7: @lawquiz.answer_7 } }
    assert_redirected_to lawquiz_url(@lawquiz)
  end

  test "should destroy lawquiz" do
    assert_difference('Lawquiz.count', -1) do
      delete lawquiz_url(@lawquiz)
    end

    assert_redirected_to lawquizzes_url
  end
end

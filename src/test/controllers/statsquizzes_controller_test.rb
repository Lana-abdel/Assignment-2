require 'test_helper'

class StatsquizzesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @statsquiz = statsquizzes(:one)
  end

  test "should get index" do
    get statsquizzes_url
    assert_response :success
  end

  test "should get new" do
    get new_statsquiz_url
    assert_response :success
  end

  test "should create statsquiz" do
    assert_difference('Statsquiz.count') do
      post statsquizzes_url, params: { statsquiz: { answer_1: @statsquiz.answer_1, answer_10: @statsquiz.answer_10, answer_2: @statsquiz.answer_2, answer_3: @statsquiz.answer_3, answer_4: @statsquiz.answer_4, answer_5: @statsquiz.answer_5, answer_6: @statsquiz.answer_6, answer_7: @statsquiz.answer_7, answer_8: @statsquiz.answer_8, answer_9: @statsquiz.answer_9 } }
    end

    assert_redirected_to statsquiz_url(Statsquiz.last)
  end

  test "should show statsquiz" do
    get statsquiz_url(@statsquiz)
    assert_response :success
  end

  test "should get edit" do
    get edit_statsquiz_url(@statsquiz)
    assert_response :success
  end

  test "should update statsquiz" do
    patch statsquiz_url(@statsquiz), params: { statsquiz: { answer_1: @statsquiz.answer_1, answer_10: @statsquiz.answer_10, answer_2: @statsquiz.answer_2, answer_3: @statsquiz.answer_3, answer_4: @statsquiz.answer_4, answer_5: @statsquiz.answer_5, answer_6: @statsquiz.answer_6, answer_7: @statsquiz.answer_7, answer_8: @statsquiz.answer_8, answer_9: @statsquiz.answer_9 } }
    assert_redirected_to statsquiz_url(@statsquiz)
  end

  test "should destroy statsquiz" do
    assert_difference('Statsquiz.count', -1) do
      delete statsquiz_url(@statsquiz)
    end

    assert_redirected_to statsquizzes_url
  end
end

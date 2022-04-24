require "application_system_test_case"

class StatsquizzesTest < ApplicationSystemTestCase
  setup do
    @statsquiz = statsquizzes(:one)
  end

  test "visiting the index" do
    visit statsquizzes_url
    assert_selector "h1", text: "Statsquizzes"
  end

  test "creating a Statsquiz" do
    visit statsquizzes_url
    click_on "New Statsquiz"

    fill_in "Answer 1", with: @statsquiz.answer_1
    fill_in "Answer 10", with: @statsquiz.answer_10
    fill_in "Answer 2", with: @statsquiz.answer_2
    fill_in "Answer 3", with: @statsquiz.answer_3
    fill_in "Answer 4", with: @statsquiz.answer_4
    fill_in "Answer 5", with: @statsquiz.answer_5
    fill_in "Answer 6", with: @statsquiz.answer_6
    fill_in "Answer 7", with: @statsquiz.answer_7
    fill_in "Answer 8", with: @statsquiz.answer_8
    fill_in "Answer 9", with: @statsquiz.answer_9
    click_on "Create Statsquiz"

    assert_text "Statsquiz was successfully created"
    click_on "Back"
  end

  test "updating a Statsquiz" do
    visit statsquizzes_url
    click_on "Edit", match: :first

    fill_in "Answer 1", with: @statsquiz.answer_1
    fill_in "Answer 10", with: @statsquiz.answer_10
    fill_in "Answer 2", with: @statsquiz.answer_2
    fill_in "Answer 3", with: @statsquiz.answer_3
    fill_in "Answer 4", with: @statsquiz.answer_4
    fill_in "Answer 5", with: @statsquiz.answer_5
    fill_in "Answer 6", with: @statsquiz.answer_6
    fill_in "Answer 7", with: @statsquiz.answer_7
    fill_in "Answer 8", with: @statsquiz.answer_8
    fill_in "Answer 9", with: @statsquiz.answer_9
    click_on "Update Statsquiz"

    assert_text "Statsquiz was successfully updated"
    click_on "Back"
  end

  test "destroying a Statsquiz" do
    visit statsquizzes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Statsquiz was successfully destroyed"
  end
end

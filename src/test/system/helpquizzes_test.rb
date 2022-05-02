require "application_system_test_case"

class HelpquizzesTest < ApplicationSystemTestCase
  setup do
    @helpquiz = helpquizzes(:one)
  end

  test "visiting the index" do
    visit helpquizzes_url
    assert_selector "h1", text: "Helpquizzes"
  end

  test "creating a Helpquiz" do
    visit helpquizzes_url
    click_on "New Helpquiz"

    fill_in "Answer 1", with: @helpquiz.answer_1
    fill_in "Answer 2", with: @helpquiz.answer_2
    fill_in "Answer 3", with: @helpquiz.answer_3
    fill_in "Answer 4", with: @helpquiz.answer_4
    fill_in "Answer 5", with: @helpquiz.answer_5
    fill_in "Answer 6", with: @helpquiz.answer_6
    fill_in "Answer 7", with: @helpquiz.answer_7
    click_on "Create Helpquiz"

    assert_text "Helpquiz was successfully created"
    click_on "Back"
  end

  test "updating a Helpquiz" do
    visit helpquizzes_url
    click_on "Edit", match: :first

    fill_in "Answer 1", with: @helpquiz.answer_1
    fill_in "Answer 2", with: @helpquiz.answer_2
    fill_in "Answer 3", with: @helpquiz.answer_3
    fill_in "Answer 4", with: @helpquiz.answer_4
    fill_in "Answer 5", with: @helpquiz.answer_5
    fill_in "Answer 6", with: @helpquiz.answer_6
    fill_in "Answer 7", with: @helpquiz.answer_7
    click_on "Update Helpquiz"

    assert_text "Helpquiz was successfully updated"
    click_on "Back"
  end

  test "destroying a Helpquiz" do
    visit helpquizzes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Helpquiz was successfully destroyed"
  end
end

require "application_system_test_case"

class LawquizzesTest < ApplicationSystemTestCase
  setup do
    @lawquiz = lawquizzes(:one)
  end

  test "visiting the index" do
    visit lawquizzes_url
    assert_selector "h1", text: "Lawquizzes"
  end

  test "creating a Lawquiz" do
    visit lawquizzes_url
    click_on "New Lawquiz"

    fill_in "Answer 1", with: @lawquiz.answer_1
    fill_in "Answer 2", with: @lawquiz.answer_2
    fill_in "Answer 3", with: @lawquiz.answer_3
    fill_in "Answer 4", with: @lawquiz.answer_4
    fill_in "Answer 5", with: @lawquiz.answer_5
    fill_in "Answer 6", with: @lawquiz.answer_6
    fill_in "Answer 7", with: @lawquiz.answer_7
    click_on "Create Lawquiz"

    assert_text "Lawquiz was successfully created"
    click_on "Back"
  end

  test "updating a Lawquiz" do
    visit lawquizzes_url
    click_on "Edit", match: :first

    fill_in "Answer 1", with: @lawquiz.answer_1
    fill_in "Answer 2", with: @lawquiz.answer_2
    fill_in "Answer 3", with: @lawquiz.answer_3
    fill_in "Answer 4", with: @lawquiz.answer_4
    fill_in "Answer 5", with: @lawquiz.answer_5
    fill_in "Answer 6", with: @lawquiz.answer_6
    fill_in "Answer 7", with: @lawquiz.answer_7
    click_on "Update Lawquiz"

    assert_text "Lawquiz was successfully updated"
    click_on "Back"
  end

  test "destroying a Lawquiz" do
    visit lawquizzes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lawquiz was successfully destroyed"
  end
end

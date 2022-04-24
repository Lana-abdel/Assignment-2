require "application_system_test_case"

class Quiz1sTest < ApplicationSystemTestCase
  setup do
    @quiz1 = quiz1s(:one)
  end

  test "visiting the index" do
    visit quiz1s_url
    assert_selector "h1", text: "Quiz1s"
  end

  test "creating a Quiz1" do
    visit quiz1s_url
    click_on "Take Quiz"

    fill_in "Answer 1", with: @quiz1.answer_1 
    fill_in "Answer 2", with: @quiz1.answer_2
    fill_in "Distractor 11", with: @quiz1.distractor_11
    fill_in "Distractor 21", with: @quiz1.distractor_21
    click_on "Create Quiz1"

    assert_text "Quiz1 was successfully created"
    click_on "Back"
  end

  test "updating a Quiz1" do
    visit quiz1s_url
    click_on "Edit", match: :first

    fill_in "Answer 1", with: @quiz1.answer_1
    fill_in "Answer 2", with: @quiz1.answer_2
    fill_in "Distractor 11", with: @quiz1.distractor_11
    fill_in "Distractor 21", with: @quiz1.distractor_21
    click_on "Update Quiz1"

    assert_text "Quiz1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Quiz1" do
    visit quiz1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Quiz1 was successfully destroyed"
  end
end

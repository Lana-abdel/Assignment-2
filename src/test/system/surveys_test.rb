require "application_system_test_case"

class SurveysTest < ApplicationSystemTestCase
  setup do
    @survey = surveys(:one)
  end

  test "visiting the index" do
    visit surveys_url
    assert_selector "h1", text: "Surveys"
  end

  test "creating a Survey" do
    visit surveys_url
    click_on "New Survey"

    fill_in "Answer 1", with: @survey.answer_1
    fill_in "Answer 2", with: @survey.answer_2
    fill_in "Answer 3", with: @survey.answer_3
    fill_in "Answer 4", with: @survey.answer_4
    click_on "Create Survey"

    assert_text "Survey was successfully created"
    click_on "Back"
  end

  test "updating a Survey" do
    visit surveys_url
    click_on "Edit", match: :first

    fill_in "Answer 1", with: @survey.answer_1
    fill_in "Answer 2", with: @survey.answer_2
    fill_in "Answer 3", with: @survey.answer_3
    fill_in "Answer 4", with: @survey.answer_4
    click_on "Update Survey"

    assert_text "Survey was successfully updated"
    click_on "Back"
  end

  test "destroying a Survey" do
    visit surveys_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Survey was successfully destroyed"
  end
end

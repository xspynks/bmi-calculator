require "application_system_test_case"

class CalcsTest < ApplicationSystemTestCase
  setup do
    @calc = calcs(:one)
  end

  test "visiting the index" do
    visit calcs_url
    assert_selector "h1", text: "Calcs"
  end

  test "should create calc" do
    visit calcs_url
    click_on "New calc"

    fill_in "Bmi", with: @calc.bmi
    fill_in "Height", with: @calc.height
    fill_in "Weight", with: @calc.weight
    click_on "Create Calc"

    assert_text "Calc was successfully created"
    click_on "Back"
  end

  test "should update Calc" do
    visit calc_url(@calc)
    click_on "Edit this calc", match: :first

    fill_in "Bmi", with: @calc.bmi
    fill_in "Height", with: @calc.height
    fill_in "Weight", with: @calc.weight
    click_on "Update Calc"

    assert_text "Calc was successfully updated"
    click_on "Back"
  end

  test "should destroy Calc" do
    visit calc_url(@calc)
    click_on "Destroy this calc", match: :first

    assert_text "Calc was successfully destroyed"
  end
end

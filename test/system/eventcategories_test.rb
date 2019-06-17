require "application_system_test_case"

class EventcategoriesTest < ApplicationSystemTestCase
  setup do
    @eventcategory = eventcategories(:one)
  end

  test "visiting the index" do
    visit eventcategories_url
    assert_selector "h1", text: "Eventcategories"
  end

  test "creating a Eventcategory" do
    visit eventcategories_url
    click_on "New Eventcategory"

    fill_in "Name", with: @eventcategory.name
    click_on "Create Eventcategory"

    assert_text "Eventcategory was successfully created"
    click_on "Back"
  end

  test "updating a Eventcategory" do
    visit eventcategories_url
    click_on "Edit", match: :first

    fill_in "Name", with: @eventcategory.name
    click_on "Update Eventcategory"

    assert_text "Eventcategory was successfully updated"
    click_on "Back"
  end

  test "destroying a Eventcategory" do
    visit eventcategories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Eventcategory was successfully destroyed"
  end
end

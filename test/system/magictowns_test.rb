require "application_system_test_case"

class MagictownsTest < ApplicationSystemTestCase
  setup do
    @magictown = magictowns(:one)
  end

  test "visiting the index" do
    visit magictowns_url
    assert_selector "h1", text: "Magictowns"
  end

  test "creating a Magictown" do
    visit magictowns_url
    click_on "New Magictown"

    fill_in "Body", with: @magictown.body
    fill_in "Latitude", with: @magictown.latitude
    fill_in "Longitude", with: @magictown.longitude
    fill_in "Title", with: @magictown.title
    click_on "Create Magictown"

    assert_text "Magictown was successfully created"
    click_on "Back"
  end

  test "updating a Magictown" do
    visit magictowns_url
    click_on "Edit", match: :first

    fill_in "Body", with: @magictown.body
    fill_in "Latitude", with: @magictown.latitude
    fill_in "Longitude", with: @magictown.longitude
    fill_in "Title", with: @magictown.title
    click_on "Update Magictown"

    assert_text "Magictown was successfully updated"
    click_on "Back"
  end

  test "destroying a Magictown" do
    visit magictowns_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Magictown was successfully destroyed"
  end
end

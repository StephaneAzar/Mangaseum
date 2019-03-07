require "application_system_test_case"

class KodomosTest < ApplicationSystemTestCase
  setup do
    @kodomo = kodomos(:one)
  end

  test "visiting the index" do
    visit kodomos_url
    assert_selector "h1", text: "Kodomos"
  end

  test "creating a Kodomo" do
    visit kodomos_url
    click_on "New Kodomo"

    fill_in "Description", with: @kodomo.description
    fill_in "Genre", with: @kodomo.genre
    fill_in "Image url", with: @kodomo.image_url
    fill_in "Mangaka", with: @kodomo.mangaka
    fill_in "Title", with: @kodomo.title
    fill_in "Year", with: @kodomo.year
    click_on "Create Kodomo"

    assert_text "Kodomo was successfully created"
    click_on "Back"
  end

  test "updating a Kodomo" do
    visit kodomos_url
    click_on "Edit", match: :first

    fill_in "Description", with: @kodomo.description
    fill_in "Genre", with: @kodomo.genre
    fill_in "Image url", with: @kodomo.image_url
    fill_in "Mangaka", with: @kodomo.mangaka
    fill_in "Title", with: @kodomo.title
    fill_in "Year", with: @kodomo.year
    click_on "Update Kodomo"

    assert_text "Kodomo was successfully updated"
    click_on "Back"
  end

  test "destroying a Kodomo" do
    visit kodomos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kodomo was successfully destroyed"
  end
end

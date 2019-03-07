require "application_system_test_case"

class SeinensTest < ApplicationSystemTestCase
  setup do
    @seinen = seinens(:one)
  end

  test "visiting the index" do
    visit seinens_url
    assert_selector "h1", text: "Seinens"
  end

  test "creating a Seinen" do
    visit seinens_url
    click_on "New Seinen"

    fill_in "Description", with: @seinen.description
    fill_in "Genre", with: @seinen.genre
    fill_in "Image url", with: @seinen.image_url
    fill_in "Mangaka", with: @seinen.mangaka
    fill_in "Title", with: @seinen.title
    fill_in "Year", with: @seinen.year
    click_on "Create Seinen"

    assert_text "Seinen was successfully created"
    click_on "Back"
  end

  test "updating a Seinen" do
    visit seinens_url
    click_on "Edit", match: :first

    fill_in "Description", with: @seinen.description
    fill_in "Genre", with: @seinen.genre
    fill_in "Image url", with: @seinen.image_url
    fill_in "Mangaka", with: @seinen.mangaka
    fill_in "Title", with: @seinen.title
    fill_in "Year", with: @seinen.year
    click_on "Update Seinen"

    assert_text "Seinen was successfully updated"
    click_on "Back"
  end

  test "destroying a Seinen" do
    visit seinens_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Seinen was successfully destroyed"
  end
end

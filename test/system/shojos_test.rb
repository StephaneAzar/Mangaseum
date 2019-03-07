require "application_system_test_case"

class ShojosTest < ApplicationSystemTestCase
  setup do
    @shojo = shojos(:one)
  end

  test "visiting the index" do
    visit shojos_url
    assert_selector "h1", text: "Shojos"
  end

  test "creating a Shojo" do
    visit shojos_url
    click_on "New Shojo"

    fill_in "Description", with: @shojo.description
    fill_in "Genre", with: @shojo.genre
    fill_in "Image url", with: @shojo.image_url
    fill_in "Mangaka", with: @shojo.mangaka
    fill_in "Title", with: @shojo.title
    fill_in "Year", with: @shojo.year
    click_on "Create Shojo"

    assert_text "Shojo was successfully created"
    click_on "Back"
  end

  test "updating a Shojo" do
    visit shojos_url
    click_on "Edit", match: :first

    fill_in "Description", with: @shojo.description
    fill_in "Genre", with: @shojo.genre
    fill_in "Image url", with: @shojo.image_url
    fill_in "Mangaka", with: @shojo.mangaka
    fill_in "Title", with: @shojo.title
    fill_in "Year", with: @shojo.year
    click_on "Update Shojo"

    assert_text "Shojo was successfully updated"
    click_on "Back"
  end

  test "destroying a Shojo" do
    visit shojos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shojo was successfully destroyed"
  end
end

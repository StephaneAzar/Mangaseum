require 'test_helper'

class KodomosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kodomo = kodomos(:one)
  end

  test "should get index" do
    get kodomos_url
    assert_response :success
  end

  test "should get new" do
    get new_kodomo_url
    assert_response :success
  end

  test "should create kodomo" do
    assert_difference('Kodomo.count') do
      post kodomos_url, params: { kodomo: { description: @kodomo.description, genre: @kodomo.genre, image_url: @kodomo.image_url, mangaka: @kodomo.mangaka, title: @kodomo.title, year: @kodomo.year } }
    end

    assert_redirected_to kodomo_url(Kodomo.last)
  end

  test "should show kodomo" do
    get kodomo_url(@kodomo)
    assert_response :success
  end

  test "should get edit" do
    get edit_kodomo_url(@kodomo)
    assert_response :success
  end

  test "should update kodomo" do
    patch kodomo_url(@kodomo), params: { kodomo: { description: @kodomo.description, genre: @kodomo.genre, image_url: @kodomo.image_url, mangaka: @kodomo.mangaka, title: @kodomo.title, year: @kodomo.year } }
    assert_redirected_to kodomo_url(@kodomo)
  end

  test "should destroy kodomo" do
    assert_difference('Kodomo.count', -1) do
      delete kodomo_url(@kodomo)
    end

    assert_redirected_to kodomos_url
  end
end

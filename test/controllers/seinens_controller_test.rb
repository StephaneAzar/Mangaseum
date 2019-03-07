require 'test_helper'

class SeinensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seinen = seinens(:one)
  end

  test "should get index" do
    get seinens_url
    assert_response :success
  end

  test "should get new" do
    get new_seinen_url
    assert_response :success
  end

  test "should create seinen" do
    assert_difference('Seinen.count') do
      post seinens_url, params: { seinen: { description: @seinen.description, genre: @seinen.genre, image_url: @seinen.image_url, mangaka: @seinen.mangaka, title: @seinen.title, year: @seinen.year } }
    end

    assert_redirected_to seinen_url(Seinen.last)
  end

  test "should show seinen" do
    get seinen_url(@seinen)
    assert_response :success
  end

  test "should get edit" do
    get edit_seinen_url(@seinen)
    assert_response :success
  end

  test "should update seinen" do
    patch seinen_url(@seinen), params: { seinen: { description: @seinen.description, genre: @seinen.genre, image_url: @seinen.image_url, mangaka: @seinen.mangaka, title: @seinen.title, year: @seinen.year } }
    assert_redirected_to seinen_url(@seinen)
  end

  test "should destroy seinen" do
    assert_difference('Seinen.count', -1) do
      delete seinen_url(@seinen)
    end

    assert_redirected_to seinens_url
  end
end

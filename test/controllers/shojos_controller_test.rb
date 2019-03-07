require 'test_helper'

class ShojosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shojo = shojos(:one)
  end

  test "should get index" do
    get shojos_url
    assert_response :success
  end

  test "should get new" do
    get new_shojo_url
    assert_response :success
  end

  test "should create shojo" do
    assert_difference('Shojo.count') do
      post shojos_url, params: { shojo: { description: @shojo.description, genre: @shojo.genre, image_url: @shojo.image_url, mangaka: @shojo.mangaka, title: @shojo.title, year: @shojo.year } }
    end

    assert_redirected_to shojo_url(Shojo.last)
  end

  test "should show shojo" do
    get shojo_url(@shojo)
    assert_response :success
  end

  test "should get edit" do
    get edit_shojo_url(@shojo)
    assert_response :success
  end

  test "should update shojo" do
    patch shojo_url(@shojo), params: { shojo: { description: @shojo.description, genre: @shojo.genre, image_url: @shojo.image_url, mangaka: @shojo.mangaka, title: @shojo.title, year: @shojo.year } }
    assert_redirected_to shojo_url(@shojo)
  end

  test "should destroy shojo" do
    assert_difference('Shojo.count', -1) do
      delete shojo_url(@shojo)
    end

    assert_redirected_to shojos_url
  end
end

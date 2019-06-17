require 'test_helper'

class MagictownsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @magictown = magictowns(:one)
  end

  test "should get index" do
    get magictowns_url
    assert_response :success
  end

  test "should get new" do
    get new_magictown_url
    assert_response :success
  end

  test "should create magictown" do
    assert_difference('Magictown.count') do
      post magictowns_url, params: { magictown: { body: @magictown.body, latitude: @magictown.latitude, longitude: @magictown.longitude, title: @magictown.title } }
    end

    assert_redirected_to magictown_url(Magictown.last)
  end

  test "should show magictown" do
    get magictown_url(@magictown)
    assert_response :success
  end

  test "should get edit" do
    get edit_magictown_url(@magictown)
    assert_response :success
  end

  test "should update magictown" do
    patch magictown_url(@magictown), params: { magictown: { body: @magictown.body, latitude: @magictown.latitude, longitude: @magictown.longitude, title: @magictown.title } }
    assert_redirected_to magictown_url(@magictown)
  end

  test "should destroy magictown" do
    assert_difference('Magictown.count', -1) do
      delete magictown_url(@magictown)
    end

    assert_redirected_to magictowns_url
  end
end

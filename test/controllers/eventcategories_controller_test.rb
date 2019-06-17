require 'test_helper'

class EventcategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eventcategory = eventcategories(:one)
  end

  test "should get index" do
    get eventcategories_url
    assert_response :success
  end

  test "should get new" do
    get new_eventcategory_url
    assert_response :success
  end

  test "should create eventcategory" do
    assert_difference('Eventcategory.count') do
      post eventcategories_url, params: { eventcategory: { name: @eventcategory.name } }
    end

    assert_redirected_to eventcategory_url(Eventcategory.last)
  end

  test "should show eventcategory" do
    get eventcategory_url(@eventcategory)
    assert_response :success
  end

  test "should get edit" do
    get edit_eventcategory_url(@eventcategory)
    assert_response :success
  end

  test "should update eventcategory" do
    patch eventcategory_url(@eventcategory), params: { eventcategory: { name: @eventcategory.name } }
    assert_redirected_to eventcategory_url(@eventcategory)
  end

  test "should destroy eventcategory" do
    assert_difference('Eventcategory.count', -1) do
      delete eventcategory_url(@eventcategory)
    end

    assert_redirected_to eventcategories_url
  end
end

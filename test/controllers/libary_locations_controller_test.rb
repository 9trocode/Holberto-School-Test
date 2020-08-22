require 'test_helper'

class LibaryLocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @libary_location = libary_locations(:one)
  end

  test "should get index" do
    get libary_locations_url
    assert_response :success
  end

  test "should get new" do
    get new_libary_location_url
    assert_response :success
  end

  test "should create libary_location" do
    assert_difference('LibaryLocations.count') do
      post libary_locations_url, params: { libary_location: { city: @libary_location.city, name: @libary_location.name, ref: @libary_location.ref } }
    end

    assert_redirected_to libary_location_url(LibaryLocations.last)
  end

  test "should show libary_location" do
    get libary_location_url(@libary_location)
    assert_response :success
  end

  test "should get edit" do
    get edit_libary_location_url(@libary_location)
    assert_response :success
  end

  test "should update libary_location" do
    patch libary_location_url(@libary_location), params: { libary_location: { city: @libary_location.city, name: @libary_location.name, ref: @libary_location.ref } }
    assert_redirected_to libary_location_url(@libary_location)
  end

  test "should destroy libary_location" do
    assert_difference('LibaryLocations.count', -1) do
      delete libary_location_url(@libary_location)
    end

    assert_redirected_to libary_locations_url
  end
end

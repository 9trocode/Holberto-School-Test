require 'test_helper'

class LibaryLocationControllerTest < ActionDispatch::IntegrationTest
  setup do
    @library_location = library_location(:one)
  end

  test "should get index" do
    get library_location_url
    assert_response :success
  end

  test "should get new" do
    get new_library_location_url
    assert_response :success
  end

  test "should create library_location" do
    assert_difference('LibraryLocation.count') do
      post library_location_url, params: {library_location: {city: @library_location.city, name: @library_location.name, ref: @library_location.ref } }
    end

    assert_redirected_to library_location_url(LibaryLocations.last)
  end

  test "should show library_location" do
    get library_location_url(@library_location)
    assert_response :success
  end

  test "should get edit" do
    get edit_library_location_url(@library_location)
    assert_response :success
  end

  test "should update library_location" do
    patch library_location_url(@library_location), params: {library_location: {city: @library_location.city, name: @library_location.name, ref: @library_location.ref } }
    assert_redirected_to library_location_url(@library_location)
  end

  test "should destroy library_location" do
    assert_difference('LibraryLocation.count', -1) do
      delete library_location_url(@library_location)
    end

    assert_redirected_to library_location_url
  end
end

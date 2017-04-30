require 'test_helper'

class HomeFacilitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @home_facility = home_facilities(:one)
  end

  test "should get index" do
    get home_facilities_url
    assert_response :success
  end

  test "should get new" do
    get new_home_facility_url
    assert_response :success
  end

  test "should create home_facility" do
    assert_difference('HomeFacility.count') do
      post home_facilities_url, params: { home_facility: { facility_id: @home_facility.facility_id, home_id: @home_facility.home_id } }
    end

    assert_redirected_to home_facility_url(HomeFacility.last)
  end

  test "should show home_facility" do
    get home_facility_url(@home_facility)
    assert_response :success
  end

  test "should get edit" do
    get edit_home_facility_url(@home_facility)
    assert_response :success
  end

  test "should update home_facility" do
    patch home_facility_url(@home_facility), params: { home_facility: { facility_id: @home_facility.facility_id, home_id: @home_facility.home_id } }
    assert_redirected_to home_facility_url(@home_facility)
  end

  test "should destroy home_facility" do
    assert_difference('HomeFacility.count', -1) do
      delete home_facility_url(@home_facility)
    end

    assert_redirected_to home_facilities_url
  end
end

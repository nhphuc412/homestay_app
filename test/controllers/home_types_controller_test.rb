require 'test_helper'

class HomeTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @home_type = home_types(:one)
  end

  test "should get index" do
    get home_types_url
    assert_response :success
  end

  test "should get new" do
    get new_home_type_url
    assert_response :success
  end

  test "should create home_type" do
    assert_difference('HomeType.count') do
      post home_types_url, params: { home_type: { home_type_name: @home_type.home_type_name, image: @home_type.image } }
    end

    assert_redirected_to home_type_url(HomeType.last)
  end

  test "should show home_type" do
    get home_type_url(@home_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_home_type_url(@home_type)
    assert_response :success
  end

  test "should update home_type" do
    patch home_type_url(@home_type), params: { home_type: { home_type_name: @home_type.home_type_name, image: @home_type.image } }
    assert_redirected_to home_type_url(@home_type)
  end

  test "should destroy home_type" do
    assert_difference('HomeType.count', -1) do
      delete home_type_url(@home_type)
    end

    assert_redirected_to home_types_url
  end
end

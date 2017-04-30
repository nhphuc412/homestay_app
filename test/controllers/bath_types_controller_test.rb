require 'test_helper'

class BathTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bath_type = bath_types(:one)
  end

  test "should get index" do
    get bath_types_url
    assert_response :success
  end

  test "should get new" do
    get new_bath_type_url
    assert_response :success
  end

  test "should create bath_type" do
    assert_difference('BathType.count') do
      post bath_types_url, params: { bath_type: { bath_type_name: @bath_type.bath_type_name } }
    end

    assert_redirected_to bath_type_url(BathType.last)
  end

  test "should show bath_type" do
    get bath_type_url(@bath_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_bath_type_url(@bath_type)
    assert_response :success
  end

  test "should update bath_type" do
    patch bath_type_url(@bath_type), params: { bath_type: { bath_type_name: @bath_type.bath_type_name } }
    assert_redirected_to bath_type_url(@bath_type)
  end

  test "should destroy bath_type" do
    assert_difference('BathType.count', -1) do
      delete bath_type_url(@bath_type)
    end

    assert_redirected_to bath_types_url
  end
end

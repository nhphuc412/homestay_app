require 'test_helper'

class BedTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bed_type = bed_types(:one)
  end

  test "should get index" do
    get bed_types_url
    assert_response :success
  end

  test "should get new" do
    get new_bed_type_url
    assert_response :success
  end

  test "should create bed_type" do
    assert_difference('BedType.count') do
      post bed_types_url, params: { bed_type: { bed_type_name: @bed_type.bed_type_name } }
    end

    assert_redirected_to bed_type_url(BedType.last)
  end

  test "should show bed_type" do
    get bed_type_url(@bed_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_bed_type_url(@bed_type)
    assert_response :success
  end

  test "should update bed_type" do
    patch bed_type_url(@bed_type), params: { bed_type: { bed_type_name: @bed_type.bed_type_name } }
    assert_redirected_to bed_type_url(@bed_type)
  end

  test "should destroy bed_type" do
    assert_difference('BedType.count', -1) do
      delete bed_type_url(@bed_type)
    end

    assert_redirected_to bed_types_url
  end
end

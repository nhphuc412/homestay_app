require 'test_helper'

class MCitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @m_city = m_cities(:one)
  end

  test "should get index" do
    get m_cities_url
    assert_response :success
  end

  test "should get new" do
    get new_m_city_url
    assert_response :success
  end

  test "should create m_city" do
    assert_difference('MCity.count') do
      post m_cities_url, params: { m_city: { city_name: @m_city.city_name, pref_id: @m_city.pref_id } }
    end

    assert_redirected_to m_city_url(MCity.last)
  end

  test "should show m_city" do
    get m_city_url(@m_city)
    assert_response :success
  end

  test "should get edit" do
    get edit_m_city_url(@m_city)
    assert_response :success
  end

  test "should update m_city" do
    patch m_city_url(@m_city), params: { m_city: { city_name: @m_city.city_name, pref_id: @m_city.pref_id } }
    assert_redirected_to m_city_url(@m_city)
  end

  test "should destroy m_city" do
    assert_difference('MCity.count', -1) do
      delete m_city_url(@m_city)
    end

    assert_redirected_to m_cities_url
  end
end

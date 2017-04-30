require 'test_helper'

class MPrefsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @m_pref = m_prefs(:one)
  end

  test "should get index" do
    get m_prefs_url
    assert_response :success
  end

  test "should get new" do
    get new_m_pref_url
    assert_response :success
  end

  test "should create m_pref" do
    assert_difference('MPref.count') do
      post m_prefs_url, params: { m_pref: { pref_name: @m_pref.pref_name } }
    end

    assert_redirected_to m_pref_url(MPref.last)
  end

  test "should show m_pref" do
    get m_pref_url(@m_pref)
    assert_response :success
  end

  test "should get edit" do
    get edit_m_pref_url(@m_pref)
    assert_response :success
  end

  test "should update m_pref" do
    patch m_pref_url(@m_pref), params: { m_pref: { pref_name: @m_pref.pref_name } }
    assert_redirected_to m_pref_url(@m_pref)
  end

  test "should destroy m_pref" do
    assert_difference('MPref.count', -1) do
      delete m_pref_url(@m_pref)
    end

    assert_redirected_to m_prefs_url
  end
end

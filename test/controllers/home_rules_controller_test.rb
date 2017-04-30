require 'test_helper'

class HomeRulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @home_rule = home_rules(:one)
  end

  test "should get index" do
    get home_rules_url
    assert_response :success
  end

  test "should get new" do
    get new_home_rule_url
    assert_response :success
  end

  test "should create home_rule" do
    assert_difference('HomeRule.count') do
      post home_rules_url, params: { home_rule: { home_id: @home_rule.home_id, rule_id: @home_rule.rule_id } }
    end

    assert_redirected_to home_rule_url(HomeRule.last)
  end

  test "should show home_rule" do
    get home_rule_url(@home_rule)
    assert_response :success
  end

  test "should get edit" do
    get edit_home_rule_url(@home_rule)
    assert_response :success
  end

  test "should update home_rule" do
    patch home_rule_url(@home_rule), params: { home_rule: { home_id: @home_rule.home_id, rule_id: @home_rule.rule_id } }
    assert_redirected_to home_rule_url(@home_rule)
  end

  test "should destroy home_rule" do
    assert_difference('HomeRule.count', -1) do
      delete home_rule_url(@home_rule)
    end

    assert_redirected_to home_rules_url
  end
end

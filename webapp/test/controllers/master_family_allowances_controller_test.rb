require 'test_helper'

class MasterFamilyAllowancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @master_family_allowance = master_family_allowances(:one)
  end

  test "should get index" do
    get master_family_allowances_url
    assert_response :success
  end

  test "should get new" do
    get new_master_family_allowance_url
    assert_response :success
  end

  test "should create master_family_allowance" do
    assert_difference('MasterFamilyAllowance.count') do
      post master_family_allowances_url, params: { master_family_allowance: { allowance: @master_family_allowance.allowance, index: @master_family_allowance.index, name: @master_family_allowance.name } }
    end

    assert_redirected_to master_family_allowance_url(MasterFamilyAllowance.last)
  end

  test "should show master_family_allowance" do
    get master_family_allowance_url(@master_family_allowance)
    assert_response :success
  end

  test "should get edit" do
    get edit_master_family_allowance_url(@master_family_allowance)
    assert_response :success
  end

  test "should update master_family_allowance" do
    patch master_family_allowance_url(@master_family_allowance), params: { master_family_allowance: { allowance: @master_family_allowance.allowance, index: @master_family_allowance.index, name: @master_family_allowance.name } }
    assert_redirected_to master_family_allowance_url(@master_family_allowance)
  end

  test "should destroy master_family_allowance" do
    assert_difference('MasterFamilyAllowance.count', -1) do
      delete master_family_allowance_url(@master_family_allowance)
    end

    assert_redirected_to master_family_allowances_url
  end
end

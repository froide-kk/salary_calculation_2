require 'test_helper'

class MasterStandardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @master_standard = master_standards(:one)
  end

  test "should get index" do
    get master_standards_url
    assert_response :success
  end

  test "should get new" do
    get new_master_standard_url
    assert_response :success
  end

  test "should create master_standard" do
    assert_difference('MasterStandard.count') do
      post master_standards_url, params: { master_standard: { index: @master_standard.index, name: @master_standard.name, value: @master_standard.value } }
    end

    assert_redirected_to master_standard_url(MasterStandard.last)
  end

  test "should show master_standard" do
    get master_standard_url(@master_standard)
    assert_response :success
  end

  test "should get edit" do
    get edit_master_standard_url(@master_standard)
    assert_response :success
  end

  test "should update master_standard" do
    patch master_standard_url(@master_standard), params: { master_standard: { index: @master_standard.index, name: @master_standard.name, value: @master_standard.value } }
    assert_redirected_to master_standard_url(@master_standard)
  end

  test "should destroy master_standard" do
    assert_difference('MasterStandard.count', -1) do
      delete master_standard_url(@master_standard)
    end

    assert_redirected_to master_standards_url
  end
end

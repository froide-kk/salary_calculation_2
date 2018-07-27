require 'test_helper'

class MasterAdditionalpointsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @master_additionalpoint = master_additionalpoints(:one)
  end

  test "should get index" do
    get master_additionalpoints_url
    assert_response :success
  end

  test "should get new" do
    get new_master_additionalpoint_url
    assert_response :success
  end

  test "should create master_additionalpoint" do
    assert_difference('MasterAdditionalpoint.count') do
      post master_additionalpoints_url, params: { master_additionalpoint: { allowance: @master_additionalpoint.allowance, index: @master_additionalpoint.index, name: @master_additionalpoint.name } }
    end

    assert_redirected_to master_additionalpoint_url(MasterAdditionalpoint.last)
  end

  test "should show master_additionalpoint" do
    get master_additionalpoint_url(@master_additionalpoint)
    assert_response :success
  end

  test "should get edit" do
    get edit_master_additionalpoint_url(@master_additionalpoint)
    assert_response :success
  end

  test "should update master_additionalpoint" do
    patch master_additionalpoint_url(@master_additionalpoint), params: { master_additionalpoint: { allowance: @master_additionalpoint.allowance, index: @master_additionalpoint.index, name: @master_additionalpoint.name } }
    assert_redirected_to master_additionalpoint_url(@master_additionalpoint)
  end

  test "should destroy master_additionalpoint" do
    assert_difference('MasterAdditionalpoint.count', -1) do
      delete master_additionalpoint_url(@master_additionalpoint)
    end

    assert_redirected_to master_additionalpoints_url
  end
end

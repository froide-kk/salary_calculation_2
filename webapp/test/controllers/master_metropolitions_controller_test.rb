require 'test_helper'

class MasterMetropolitionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @master_metropolition = master_metropolitions(:one)
  end

  test "should get index" do
    get master_metropolitions_url
    assert_response :success
  end

  test "should get new" do
    get new_master_metropolition_url
    assert_response :success
  end

  test "should create master_metropolition" do
    assert_difference('MasterMetropolition.count') do
      post master_metropolitions_url, params: { master_metropolition: { allowance: @master_metropolition.allowance, index: @master_metropolition.index, name: @master_metropolition.name } }
    end

    assert_redirected_to master_metropolition_url(MasterMetropolition.last)
  end

  test "should show master_metropolition" do
    get master_metropolition_url(@master_metropolition)
    assert_response :success
  end

  test "should get edit" do
    get edit_master_metropolition_url(@master_metropolition)
    assert_response :success
  end

  test "should update master_metropolition" do
    patch master_metropolition_url(@master_metropolition), params: { master_metropolition: { allowance: @master_metropolition.allowance, index: @master_metropolition.index, name: @master_metropolition.name } }
    assert_redirected_to master_metropolition_url(@master_metropolition)
  end

  test "should destroy master_metropolition" do
    assert_difference('MasterMetropolition.count', -1) do
      delete master_metropolition_url(@master_metropolition)
    end

    assert_redirected_to master_metropolitions_url
  end
end

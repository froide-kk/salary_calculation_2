require 'test_helper'

class MasterPositionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @master_position = master_positions(:one)
  end

  test "should get index" do
    get master_positions_url
    assert_response :success
  end

  test "should get new" do
    get new_master_position_url
    assert_response :success
  end

  test "should create master_position" do
    assert_difference('MasterPosition.count') do
      post master_positions_url, params: { master_position: { deemded_overtime: @master_position.deemded_overtime, duty_allowance: @master_position.duty_allowance, functional_allowance: @master_position.functional_allowance, index: @master_position.index, name: @master_position.name, standard_age: @master_position.standard_age } }
    end

    assert_redirected_to master_position_url(MasterPosition.last)
  end

  test "should show master_position" do
    get master_position_url(@master_position)
    assert_response :success
  end

  test "should get edit" do
    get edit_master_position_url(@master_position)
    assert_response :success
  end

  test "should update master_position" do
    patch master_position_url(@master_position), params: { master_position: { deemded_overtime: @master_position.deemded_overtime, duty_allowance: @master_position.duty_allowance, functional_allowance: @master_position.functional_allowance, index: @master_position.index, name: @master_position.name, standard_age: @master_position.standard_age } }
    assert_redirected_to master_position_url(@master_position)
  end

  test "should destroy master_position" do
    assert_difference('MasterPosition.count', -1) do
      delete master_position_url(@master_position)
    end

    assert_redirected_to master_positions_url
  end
end

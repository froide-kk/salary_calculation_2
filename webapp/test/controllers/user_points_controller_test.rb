require 'test_helper'

class UserPointsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_point = user_points(:one)
  end

  test "should get index" do
    get user_points_url
    assert_response :success
  end

  test "should get new" do
    get new_user_point_url
    assert_response :success
  end

  test "should create user_point" do
    assert_difference('UserPoint.count') do
      post user_points_url, params: { user_point: { index: @user_point.index, master_additionalpoint_id: @user_point.master_additionalpoint_id, reason: @user_point.reason, user_info_id: @user_point.user_info_id, value: @user_point.value } }
    end

    assert_redirected_to user_point_url(UserPoint.last)
  end

  test "should show user_point" do
    get user_point_url(@user_point)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_point_url(@user_point)
    assert_response :success
  end

  test "should update user_point" do
    patch user_point_url(@user_point), params: { user_point: { index: @user_point.index, master_additionalpoint_id: @user_point.master_additionalpoint_id, reason: @user_point.reason, user_info_id: @user_point.user_info_id, value: @user_point.value } }
    assert_redirected_to user_point_url(@user_point)
  end

  test "should destroy user_point" do
    assert_difference('UserPoint.count', -1) do
      delete user_point_url(@user_point)
    end

    assert_redirected_to user_points_url
  end
end

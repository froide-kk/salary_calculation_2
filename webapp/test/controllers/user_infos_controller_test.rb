require 'test_helper'

class UserInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_info = user_infos(:one)
  end

  test "should get index" do
    get user_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_user_info_url
    assert_response :success
  end

  test "should create user_info" do
    assert_difference('UserInfo.count') do
      post user_infos_url, params: { user_info: { address: @user_info.address, age: @user_info.age, ageP: @user_info.ageP, age_adjustment: @user_info.age_adjustment, birth: @user_info.birth, family_num: @user_info.family_num, index: @user_info.index, insurance: @user_info.insurance, master_job_id: @user_info.master_job_id, master_position_id: @user_info.master_position_id, name: @user_info.name, partner_num: @user_info.partner_num, shorter_working_hour_ch: @user_info.shorter_working_hour_ch } }
    end

    assert_redirected_to user_info_url(UserInfo.last)
  end

  test "should show user_info" do
    get user_info_url(@user_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_info_url(@user_info)
    assert_response :success
  end

  test "should update user_info" do
    patch user_info_url(@user_info), params: { user_info: { address: @user_info.address, age: @user_info.age, ageP: @user_info.ageP, age_adjustment: @user_info.age_adjustment, birth: @user_info.birth, family_num: @user_info.family_num, index: @user_info.index, insurance: @user_info.insurance, master_job_id: @user_info.master_job_id, master_position_id: @user_info.master_position_id, name: @user_info.name, partner_num: @user_info.partner_num, shorter_working_hour_ch: @user_info.shorter_working_hour_ch } }
    assert_redirected_to user_info_url(@user_info)
  end

  test "should destroy user_info" do
    assert_difference('UserInfo.count', -1) do
      delete user_info_url(@user_info)
    end

    assert_redirected_to user_infos_url
  end
end

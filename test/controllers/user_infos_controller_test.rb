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
      post user_infos_url, params: { user_info: { Secondhalf-salary: @user_info.Secondhalf-salary, address: @user_info.address, age-adjustment: @user_info.age-adjustment, age: @user_info.age, ageP: @user_info.ageP, birth: @user_info.birth, family-num: @user_info.family-num, index: @user_info.index, insurance: @user_info.insurance, job-id: @user_info.job-id, name: @user_info.name, partner-num: @user_info.partner-num, position-id: @user_info.position-id, shorter-working-hour-ch: @user_info.shorter-working-hour-ch } }
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
    patch user_info_url(@user_info), params: { user_info: { Secondhalf-salary: @user_info.Secondhalf-salary, address: @user_info.address, age-adjustment: @user_info.age-adjustment, age: @user_info.age, ageP: @user_info.ageP, birth: @user_info.birth, family-num: @user_info.family-num, index: @user_info.index, insurance: @user_info.insurance, job-id: @user_info.job-id, name: @user_info.name, partner-num: @user_info.partner-num, position-id: @user_info.position-id, shorter-working-hour-ch: @user_info.shorter-working-hour-ch } }
    assert_redirected_to user_info_url(@user_info)
  end

  test "should destroy user_info" do
    assert_difference('UserInfo.count', -1) do
      delete user_info_url(@user_info)
    end

    assert_redirected_to user_infos_url
  end
end

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
      post user_infos_url, params: { user_info: { address: @user_info.address, age: @user_info.age, birth: @user_info.birth, family: @user_info.family, family_allowance_id: @user_info.family_allowance_id, index: @user_info.index, insurance: @user_info.insurance, job_id: @user_info.job_id, metropolitan_allowance_id: @user_info.metropolitan_allowance_id, name: @user_info.name, position_id: @user_info.position_id, salary_id: @user_info.salary_id, standard_id: @user_info.standard_id, wife: @user_info.wife } }
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
    patch user_info_url(@user_info), params: { user_info: { address: @user_info.address, age: @user_info.age, birth: @user_info.birth, family: @user_info.family, family_allowance_id: @user_info.family_allowance_id, index: @user_info.index, insurance: @user_info.insurance, job_id: @user_info.job_id, metropolitan_allowance_id: @user_info.metropolitan_allowance_id, name: @user_info.name, position_id: @user_info.position_id, salary_id: @user_info.salary_id, standard_id: @user_info.standard_id, wife: @user_info.wife } }
    assert_redirected_to user_info_url(@user_info)
  end

  test "should destroy user_info" do
    assert_difference('UserInfo.count', -1) do
      delete user_info_url(@user_info)
    end

    assert_redirected_to user_infos_url
  end
end

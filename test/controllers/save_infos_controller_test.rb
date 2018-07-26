require 'test_helper'

class SaveInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @save_info = save_infos(:one)
  end

  test "should get index" do
    get save_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_save_info_url
    assert_response :success
  end

  test "should create save_info" do
    assert_difference('SaveInfo.count') do
      post save_infos_url, params: { save_info: { basic_age: @save_info.basic_age, basic_pay: @save_info.basic_pay, difference: @save_info.difference, extra_work_hourly_wage: @save_info.extra_work_hourly_wage, extra_work_time: @save_info.extra_work_time, face_wage: @save_info.face_wage, family_allowance: @save_info.family_allowance, functional_level: @save_info.functional_level, hourly_difference: @save_info.hourly_difference, hourly_wage: @save_info.hourly_wage, index: @save_info.index, metropolitan_allowance: @save_info.metropolitan_allowance, month: @save_info.month, normal_working_hour_allowance: @save_info.normal_working_hour_allowance, overtime_pay: @save_info.overtime_pay, promotion_rate: @save_info.promotion_rate, ratio: @save_info.ratio, user_info_id: @save_info.user_info_id, year: @save_info.year } }
    end

    assert_redirected_to save_info_url(SaveInfo.last)
  end

  test "should show save_info" do
    get save_info_url(@save_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_save_info_url(@save_info)
    assert_response :success
  end

  test "should update save_info" do
    patch save_info_url(@save_info), params: { save_info: { basic_age: @save_info.basic_age, basic_pay: @save_info.basic_pay, difference: @save_info.difference, extra_work_hourly_wage: @save_info.extra_work_hourly_wage, extra_work_time: @save_info.extra_work_time, face_wage: @save_info.face_wage, family_allowance: @save_info.family_allowance, functional_level: @save_info.functional_level, hourly_difference: @save_info.hourly_difference, hourly_wage: @save_info.hourly_wage, index: @save_info.index, metropolitan_allowance: @save_info.metropolitan_allowance, month: @save_info.month, normal_working_hour_allowance: @save_info.normal_working_hour_allowance, overtime_pay: @save_info.overtime_pay, promotion_rate: @save_info.promotion_rate, ratio: @save_info.ratio, user_info_id: @save_info.user_info_id, year: @save_info.year } }
    assert_redirected_to save_info_url(@save_info)
  end

  test "should destroy save_info" do
    assert_difference('SaveInfo.count', -1) do
      delete save_info_url(@save_info)
    end

    assert_redirected_to save_infos_url
  end
end

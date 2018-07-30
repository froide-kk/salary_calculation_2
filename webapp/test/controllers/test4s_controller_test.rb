require 'test_helper'

class Test4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test4 = test4s(:one)
  end

  test "should get index" do
    get test4s_url
    assert_response :success
  end

  test "should get new" do
    get new_test4_url
    assert_response :success
  end

  test "should create test4" do
    assert_difference('Test4.count') do
      post test4s_url, params: { test4: { name: @test4.name, test2_id: @test4.test2_id } }
    end

    assert_redirected_to test4_url(Test4.last)
  end

  test "should show test4" do
    get test4_url(@test4)
    assert_response :success
  end

  test "should get edit" do
    get edit_test4_url(@test4)
    assert_response :success
  end

  test "should update test4" do
    patch test4_url(@test4), params: { test4: { name: @test4.name, test2_id: @test4.test2_id } }
    assert_redirected_to test4_url(@test4)
  end

  test "should destroy test4" do
    assert_difference('Test4.count', -1) do
      delete test4_url(@test4)
    end

    assert_redirected_to test4s_url
  end
end

require 'test_helper'

class MetropolitansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @metropolitan = metropolitans(:one)
  end

  test "should get index" do
    get metropolitans_url
    assert_response :success
  end

  test "should get new" do
    get new_metropolitan_url
    assert_response :success
  end

  test "should create metropolitan" do
    assert_difference('Metropolitan.count') do
      post metropolitans_url, params: { metropolitan: { address: @metropolitan.address, address_allowance: @metropolitan.address_allowance, index: @metropolitan.index } }
    end

    assert_redirected_to metropolitan_url(Metropolitan.last)
  end

  test "should show metropolitan" do
    get metropolitan_url(@metropolitan)
    assert_response :success
  end

  test "should get edit" do
    get edit_metropolitan_url(@metropolitan)
    assert_response :success
  end

  test "should update metropolitan" do
    patch metropolitan_url(@metropolitan), params: { metropolitan: { address: @metropolitan.address, address_allowance: @metropolitan.address_allowance, index: @metropolitan.index } }
    assert_redirected_to metropolitan_url(@metropolitan)
  end

  test "should destroy metropolitan" do
    assert_difference('Metropolitan.count', -1) do
      delete metropolitan_url(@metropolitan)
    end

    assert_redirected_to metropolitans_url
  end
end

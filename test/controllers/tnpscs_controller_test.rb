require 'test_helper'

class TnpscsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tnpsc = tnpscs(:one)
  end

  test "should get index" do
    get tnpscs_url
    assert_response :success
  end

  test "should get new" do
    get new_tnpsc_url
    assert_response :success
  end

  test "should create tnpsc" do
    assert_difference('Tnpsc.count') do
      post tnpscs_url, params: { tnpsc: { Post: @tnpsc.Post, Qualification: @tnpsc.Qualification } }
    end

    assert_redirected_to tnpsc_url(Tnpsc.last)
  end

  test "should show tnpsc" do
    get tnpsc_url(@tnpsc)
    assert_response :success
  end

  test "should get edit" do
    get edit_tnpsc_url(@tnpsc)
    assert_response :success
  end

  test "should update tnpsc" do
    patch tnpsc_url(@tnpsc), params: { tnpsc: { Post: @tnpsc.Post, Qualification: @tnpsc.Qualification } }
    assert_redirected_to tnpsc_url(@tnpsc)
  end

  test "should destroy tnpsc" do
    assert_difference('Tnpsc.count', -1) do
      delete tnpsc_url(@tnpsc)
    end

    assert_redirected_to tnpscs_url
  end
end

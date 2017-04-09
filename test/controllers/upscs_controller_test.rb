require 'test_helper'

class UpscsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @upsc = upscs(:one)
  end

  test "should get index" do
    get upscs_url
    assert_response :success
  end

  test "should get new" do
    get new_upsc_url
    assert_response :success
  end

  test "should create upsc" do
    assert_difference('Upsc.count') do
      post upscs_url, params: { upsc: { education: @upsc.education, lastdate: @upsc.lastdate, more: @upsc.more, post: @upsc.post, postdate: @upsc.postdate } }
    end

    assert_redirected_to upsc_url(Upsc.last)
  end

  test "should show upsc" do
    get upsc_url(@upsc)
    assert_response :success
  end

  test "should get edit" do
    get edit_upsc_url(@upsc)
    assert_response :success
  end

  test "should update upsc" do
    patch upsc_url(@upsc), params: { upsc: { education: @upsc.education, lastdate: @upsc.lastdate, more: @upsc.more, post: @upsc.post, postdate: @upsc.postdate } }
    assert_redirected_to upsc_url(@upsc)
  end

  test "should destroy upsc" do
    assert_difference('Upsc.count', -1) do
      delete upsc_url(@upsc)
    end

    assert_redirected_to upscs_url
  end
end

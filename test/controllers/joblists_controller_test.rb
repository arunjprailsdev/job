require 'test_helper'

class JoblistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @joblist = joblists(:one)
  end

  test "should get index" do
    get joblists_url
    assert_response :success
  end

  test "should get new" do
    get new_joblist_url
    assert_response :success
  end

  test "should create joblist" do
    assert_difference('Joblist.count') do
      post joblists_url, params: { joblist: { JobTitle: @joblist.JobTitle, LastDate: @joblist.LastDate, MoreInfo: @joblist.MoreInfo, PostDate: @joblist.PostDate, Qualification: @joblist.Qualification } }
    end

    assert_redirected_to joblist_url(Joblist.last)
  end

  test "should show joblist" do
    get joblist_url(@joblist)
    assert_response :success
  end

  test "should get edit" do
    get edit_joblist_url(@joblist)
    assert_response :success
  end

  test "should update joblist" do
    patch joblist_url(@joblist), params: { joblist: { JobTitle: @joblist.JobTitle, LastDate: @joblist.LastDate, MoreInfo: @joblist.MoreInfo, PostDate: @joblist.PostDate, Qualification: @joblist.Qualification } }
    assert_redirected_to joblist_url(@joblist)
  end

  test "should destroy joblist" do
    assert_difference('Joblist.count', -1) do
      delete joblist_url(@joblist)
    end

    assert_redirected_to joblists_url
  end
end

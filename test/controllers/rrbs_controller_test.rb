require 'test_helper'

class RrbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rrb = rrbs(:one)
  end

  test "should get index" do
    get rrbs_url
    assert_response :success
  end

  test "should get new" do
    get new_rrb_url
    assert_response :success
  end

  test "should create rrb" do
    assert_difference('Rrb.count') do
      post rrbs_url, params: { rrb: { AgeLimit: @rrb.AgeLimit, ApplicationFee: @rrb.ApplicationFee, Apply: @rrb.Apply, Description: @rrb.Description, EducationalQualification: @rrb.EducationalQualification, PostDate: @rrb.PostDate, PostName: @rrb.PostName, SelectionProcess: @rrb.SelectionProcess, TotalPost: @rrb.TotalPost, VacancyDetails: @rrb.VacancyDetails } }
    end

    assert_redirected_to rrb_url(Rrb.last)
  end

  test "should show rrb" do
    get rrb_url(@rrb)
    assert_response :success
  end

  test "should get edit" do
    get edit_rrb_url(@rrb)
    assert_response :success
  end

  test "should update rrb" do
    patch rrb_url(@rrb), params: { rrb: { AgeLimit: @rrb.AgeLimit, ApplicationFee: @rrb.ApplicationFee, Apply: @rrb.Apply, Description: @rrb.Description, EducationalQualification: @rrb.EducationalQualification, PostDate: @rrb.PostDate, PostName: @rrb.PostName, SelectionProcess: @rrb.SelectionProcess, TotalPost: @rrb.TotalPost, VacancyDetails: @rrb.VacancyDetails } }
    assert_redirected_to rrb_url(@rrb)
  end

  test "should destroy rrb" do
    assert_difference('Rrb.count', -1) do
      delete rrb_url(@rrb)
    end

    assert_redirected_to rrbs_url
  end
end

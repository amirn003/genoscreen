require "test_helper"

class AnalysisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get analysis_index_url
    assert_response :success
  end

  test "should get new" do
    get analysis_new_url
    assert_response :success
  end

  test "should get create" do
    get analysis_create_url
    assert_response :success
  end

  test "should get show" do
    get analysis_show_url
    assert_response :success
  end

  test "should get edit" do
    get analysis_edit_url
    assert_response :success
  end

  test "should get update" do
    get analysis_update_url
    assert_response :success
  end

  test "should get destroy" do
    get analysis_destroy_url
    assert_response :success
  end
end

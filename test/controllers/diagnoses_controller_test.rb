require 'test_helper'

class DiagnosesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get diagnoses_index_url
    assert_response :success
  end

  test "should get showcreate" do
    get diagnoses_showcreate_url
    assert_response :success
  end

  test "should get update" do
    get diagnoses_update_url
    assert_response :success
  end

  test "should get destroy" do
    get diagnoses_destroy_url
    assert_response :success
  end

end

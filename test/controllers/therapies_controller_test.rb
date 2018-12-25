require 'test_helper'

class TherapiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get therapies_index_url
    assert_response :success
  end

  test "should get show" do
    get therapies_show_url
    assert_response :success
  end

  test "should get create" do
    get therapies_create_url
    assert_response :success
  end

  test "should get update" do
    get therapies_update_url
    assert_response :success
  end

  test "should get destroy" do
    get therapies_destroy_url
    assert_response :success
  end

end

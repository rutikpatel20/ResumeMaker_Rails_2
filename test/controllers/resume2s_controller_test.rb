require "test_helper"

class Resume2sControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get resume2s_index_url
    assert_response :success
  end

  test "should get edit" do
    get resume2s_edit_url
    assert_response :success
  end

  test "should get new" do
    get resume2s_new_url
    assert_response :success
  end

  test "should get show" do
    get resume2s_show_url
    assert_response :success
  end
end

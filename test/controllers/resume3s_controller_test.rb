require "test_helper"

class Resume3sControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get resume3s_index_url
    assert_response :success
  end

  test "should get new" do
    get resume3s_new_url
    assert_response :success
  end

  test "should get show" do
    get resume3s_show_url
    assert_response :success
  end

  test "should get edit" do
    get resume3s_edit_url
    assert_response :success
  end
end

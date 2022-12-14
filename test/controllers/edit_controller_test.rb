require "test_helper"

class EditControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get edit_new_url
    assert_response :success
  end

  test "should get index" do
    get edit_index_url
    assert_response :success
  end

  test "should get show" do
    get edit_show_url
    assert_response :success
  end

  test "should get edit" do
    get edit_edit_url
    assert_response :success
  end
end

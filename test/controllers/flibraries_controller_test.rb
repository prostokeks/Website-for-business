require "test_helper"

class FlibrariesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get flibraries_index_url
    assert_response :success
  end

  test "should get new" do
    get flibraries_new_url
    assert_response :success
  end

  test "should get edit" do
    get flibraries_edit_url
    assert_response :success
  end

  test "should get show" do
    get flibraries_show_url
    assert_response :success
  end
end

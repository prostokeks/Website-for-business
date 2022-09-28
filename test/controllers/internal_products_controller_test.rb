require "test_helper"

class InternalProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get internal_products_index_url
    assert_response :success
  end

  test "should get show" do
    get internal_products_show_url
    assert_response :success
  end

  test "should get new" do
    get internal_products_new_url
    assert_response :success
  end

  test "should get edit" do
    get internal_products_edit_url
    assert_response :success
  end
end

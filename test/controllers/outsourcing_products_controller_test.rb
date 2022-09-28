require "test_helper"

class OutsourcingProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get outsourcing_products_index_url
    assert_response :success
  end

  test "should get show" do
    get outsourcing_products_show_url
    assert_response :success
  end

  test "should get new" do
    get outsourcing_products_new_url
    assert_response :success
  end

  test "should get edit" do
    get outsourcing_products_edit_url
    assert_response :success
  end
end

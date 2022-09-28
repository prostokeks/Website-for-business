require "test_helper"

class StaticBackPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get static_back_pages_index_url
    assert_response :success
  end
end

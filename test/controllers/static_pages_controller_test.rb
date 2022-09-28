require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get static_pages_index_url
    assert_response :success
  end

  test "should get careers" do
    get static_pages_careers_url
    assert_response :success
  end

  test "should get portfolio" do
    get static_pages_portfolio_url
    assert_response :success
  end

  test "should get team" do
    get static_pages_team_url
    assert_response :success
  end
end

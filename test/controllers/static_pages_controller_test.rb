require 'test_helper'

def setup
  @base_title = "Micropost Blog"
end

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home| Micropost Blog"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help| Micropost Blog"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About| Micropost Blog"
  end

end

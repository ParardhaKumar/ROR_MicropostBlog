require 'test_helper'

def setup
  @base_title = "Micropost Blog"
end

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home| Micropost Blog"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help| Micropost Blog"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About| Micropost Blog"
  end

  test "should get contact" do
  get contact_path
  assert_response :success
  assert_select "title", "Contact| Micropost Blog"
end


end

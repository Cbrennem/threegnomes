require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "layout links" do
    get root_path
    assert_select "a[href=?]", root_path, count: 3
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    get yui_path
    assert_select "title", full_title("Yui")
    get signup_path
    assert_select "title", full_title("Sign up")
  end

end

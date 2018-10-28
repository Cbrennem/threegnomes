require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,         "3Gnomes App"
    assert_equal full_title("Help"), "Help | 3Gnomes App"
  end
end
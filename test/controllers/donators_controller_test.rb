require 'test_helper'

class DonatorsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get donators_home_url
    assert_response :success
  end

end

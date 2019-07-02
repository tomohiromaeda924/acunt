require 'test_helper'

class FromUserControllerTest < ActionDispatch::IntegrationTest
  test "should get first" do
    get from_user_first_url
    assert_response :success
  end

end

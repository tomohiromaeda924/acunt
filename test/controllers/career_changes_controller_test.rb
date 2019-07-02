require 'test_helper'

class CareerChangesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get career_changes_new_url
    assert_response :success
  end

end

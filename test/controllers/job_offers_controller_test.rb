require 'test_helper'

class JobOffersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get job_offers_new_url
    assert_response :success
  end

end

require 'test_helper'

class OurCompanyControllerTest < ActionDispatch::IntegrationTest
  test "should get company_profile" do
    get our_company_company_profile_url
    assert_response :success
  end

end

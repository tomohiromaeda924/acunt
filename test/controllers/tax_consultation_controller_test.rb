require 'test_helper'

class TaxConsultationControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get tax_consultation_new_url
    assert_response :success
  end

end

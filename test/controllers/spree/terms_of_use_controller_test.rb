require 'test_helper'

class Spree::TermsOfUseControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get spree_terms_of_use_index_url
    assert_response :success
  end

end

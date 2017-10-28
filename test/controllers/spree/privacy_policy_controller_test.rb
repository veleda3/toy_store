require 'test_helper'

class Spree::PrivacyPolicyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get spree_privacy_policy_index_url
    assert_response :success
  end

end

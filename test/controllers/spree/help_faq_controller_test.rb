require 'test_helper'

class Spree::HelpFaqControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get spree_help_faq_index_url
    assert_response :success
  end

end

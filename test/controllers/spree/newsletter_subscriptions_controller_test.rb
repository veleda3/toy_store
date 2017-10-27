require 'test_helper'

class Spree::NewsletterSubscriptionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get spree_newsletter_subscriptions_new_url
    assert_response :success
  end

  test "should get create" do
    get spree_newsletter_subscriptions_create_url
    assert_response :success
  end

end

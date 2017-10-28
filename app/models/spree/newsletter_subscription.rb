class Spree::NewsletterSubscription < Spree::Base
  validates_uniqueness_of :email
  validates_format_of :email, with: Devise::email_regexp
end

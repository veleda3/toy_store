class NewsletterSubscriptionsController < ApplicationController
  def new
  end

  def create
    newsletterSubscription = NewsletterSubscription.new(newsletterSubscription_params)
  if newsletterSubscription.save
    redirect_to root_path, :flash => { notice: "Thank you for adding your info to our newsletter. We are looking forward to serving you." }
  else
    errors = newsletterSubscription.errors.full_messages
    redirect_to new, :flash => { error: errors }
  end
  end

  private

  def newsletterSubscription_params
    params.permit(:email, :message)
  end
end

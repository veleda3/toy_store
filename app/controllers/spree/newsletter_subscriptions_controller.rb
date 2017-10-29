class Spree::NewsletterSubscriptionsController < Spree::StoreController
  def new
    newsletterSubscription = Spree::NewsletterSubscription.new
  end

  def create
    newsletterSubscription = Spree::NewsletterSubscription.new(newsletterSubscription_params)
  if newsletterSubscription.save
    redirect_to root_path, :flash => { notice: "Thank you for adding your info to our newsletter. We are looking forward to serving you." }
  else
    errors = newsletterSubscription.errors.full_messages
    redirect_to root_path, :flash => { error: "Please give us a unique email address to reach out, We promise we wont spam or sell your information" }
  end
  end

  private

  def newsletterSubscription_params
    params.permit(:email, :message)
  end
end

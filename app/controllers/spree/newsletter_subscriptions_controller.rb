class Spree::NewsletterSubscriptionsController < Spree::StoreController
  def new
    newsletterSubscription = Spree::NewsletterSubscription.new
  end

  def create
    newsletterSubscription = Spree::NewsletterSubscription.new(newsletterSubscription_params)
    binding.pry
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

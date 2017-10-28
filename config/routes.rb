Rails.application.routes.draw do


  namespace :spree do
    get 'terms_of_use/index'
  end

  namespace :spree do
    get 'privacy_policy/index'
  end

  namespace :spree do
    get 'help_faq/index'
  end

  # namespace :spree do
  #   get 'newsletter_subscriptions/new'
  # end
  #
  # namespace :spree do
  #   get 'newsletter_subscriptions/create'
  #   resources :NewsletterSubscriptions, only: [:new, :create]
  # end


  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  mount Spree::Core::Engine, at: '/'
  Spree::Core::Engine.add_routes do
    post 'newsletter_subscriptions/create'
    get 'about_us', to: 'about_us#index'
    get 'help_faq', to: 'help_faq#index'
    get 'privacy_policy', to: 'privacy_policy#index'
    get 'terms_of_use', to: 'terms_of_use#index'
  end
  # We ask that you don't use the :as option here, as Spree relies on it being the default of "spree"
          # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

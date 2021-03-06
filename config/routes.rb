Rails.application.routes.draw do
  # This line mounts Solidus's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Solidus relies on it being the default of "spree"


  root to: 'about#promo'
  mount Spree::Core::Engine, at: '/store'
  get '/about', to: 'about#mission'
  get '/me', to: 'about#me'
  get '/support', to: 'about#support'
  get '/news', to: 'posts#index'
  get '/news/:id', to: 'posts#show'
  get '/videos', to: 'videos#index'
  post '/subscribe', to: 'email#subscribe'
  post '/unsubscribe', to: 'email#unsubscribe'
  post '/promo', to: 'about#promo'

  get ENV['SECRET_URL'] + '/:id' + '/edit', to: 'posts#edit'
  post ENV['SECRET_URL'] + '/:id' + '/update', to: 'posts#update'
  post ENV['SECRET_URL'] + '/:id' + '/delete', to: 'posts#delete', as: :delete_post
  post ENV['SECRET_URL'] + '/create', to: 'posts#create', as: :create_post
  get ENV['SECRET_URL'] + '/new', to: 'posts#new', as: :new_post
end

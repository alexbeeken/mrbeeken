Rails.application.routes.draw do
  # This line mounts Solidus's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Solidus relies on it being the default of "spree"


  root to: 'posts#index'
  mount Spree::Core::Engine, at: '/store'
  get '/about', to: 'about#me'
  get '/support', to: 'about#support'
  get '/news', to: 'posts#index'
  get '/news/:id', to: 'posts#show'
  get '/videos', to: 'videos#index'
  get '/videos/:id', to: 'videos#show'

  get ENV['SECRET_URL'] + '/:id' + '/edit', to: 'posts#edit'
  post ENV['SECRET_URL'] + '/:id' + '/update', to: 'posts#update'
  post ENV['SECRET_URL'] + '/:id' + '/delete', to: 'posts#delete', as: :delete_post
  post ENV['SECRET_URL'] + '/create', to: 'posts#create', as: :create_post
  get ENV['SECRET_URL'] + '/new', to: 'posts#new', as: :new_post

  get ENV['SECRET_URL'] + '/v' + '/:id' + '/edit', to: 'videos#edit'
  post ENV['SECRET_URL'] + '/v' + '/:id' + '/update', to: 'videos#update'
  post ENV['SECRET_URL'] + '/v' + '/:id' + '/delete', to: 'videos#delete', as: :delete_video
  post ENV['SECRET_URL'] + '/v' + '/create', to: 'videos#create', as: :create_video
  get ENV['SECRET_URL'] + '/v' + '/new', to: 'videos#new', as: :new_video
end

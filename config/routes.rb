# routes.rb
Rails.application.routes.draw do
  # instead of writing out all the methods by hand
      # get '/birds', to: 'birds#index'
      # get '/birds/:id', to: 'birds#show'

  # We can use resources, to get access to all RESTful routes 
  # resources :birds

  # We want to be specific to the routes we want to define
  # in this case index and create 
  resources :birds, only: [:index, :show]
end

# Generate a controller
# rails g controller birds --no-test-framework
# in the controller you define all your controller methods

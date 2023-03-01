Rails.application.routes.draw do
  resources :sales
  resources :consultants
  
  namespace :api do 
    namespace :v1 do
      resources :products

    end
  end
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "api/v1/products#index"
end

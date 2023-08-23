Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "restaurants#index"
  resources :restaurants, except: [:destroy, :update, :edit] do
    resources :reviews, only: [:new, :create, :index]
  end

  root "restaurants#index"
end

Rails.application.routes.draw do
  mount AppDiag::Engine => '/app_diag'

  resources :reviews
  resources :categories
  resources :apps
  resources :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

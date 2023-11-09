Rails.application.routes.draw do
  # get 'laboratories/index'
  # get 'laboratories/new'
  # get 'laboratories/create'
  # get 'laboratories/edit'
  # get 'laboratories/update'
  resources :laboratories
  resources :analysis
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

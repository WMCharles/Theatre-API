Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :crew_members
  resources :productions, only: [:index, :show, :create, :update, :destroy]
end

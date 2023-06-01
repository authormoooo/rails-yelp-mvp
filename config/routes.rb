Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # resources :restaurants
  # Defines the root path route ("/")
  # root "articles#index"
  get '/restaurants', to: 'restaurants#index'
  get '/restaurants/new', to: 'restaurants#new', as: :new_restaurant
  post 'restaurants', to: 'restaurants#create'
  get '/restaurants/:id', to: 'restaurants#show', as: :restaurant
  get 'restaurants/:id/reviews/new', to: 'reviews#new', as: :new_review
  post 'restaurants/:id/reviews', to: 'reviews#create'

  # resources :restaurants do
  #   resources :reviews, only: [:new]
  # end

  # resources :restaurants do
  #   resources :reviews, only: [:new, :create]
  # end
end

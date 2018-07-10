Rails.application.routes.draw do
  # resources :recipe_ingredients
  # resources :ingredients
  # resources :recipe_lists, only: [:show]
  # resources :recipes, only: [:index]
  resources :users, only: [:index, :show, :create]
  resources :sessions, only: [:create]

  get '/users/:id/recipes', to: 'users#recipe_lists'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

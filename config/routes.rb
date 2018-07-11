Rails.application.routes.draw do
  resources :users, only: [:index, :show, :create]
  resources :sessions, only: [:create]

  get '/users/:id/recipes', to: 'users#recipe_lists'

  get '/save-recipe', to: 'recipe_lists#save'

end

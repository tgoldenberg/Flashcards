Rails.application.routes.draw do
  root 'pages#home'

  resources :games
  resources :decks
  resources :cards
  resources :users
  get 'signup' => 'users#signup'
  get 'signin' => 'users#signin'
  post 'login' => 'users#create_session'
  post 'signup' => 'users#create'
  delete 'logout' => 'users#destroy_session'
  put 'users/:id' => 'users#update'
  get 'users/:id/edit' => 'users#edit'
  post 'games/:id/guess' => 'games#guess'
end

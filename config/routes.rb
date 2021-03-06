Rails.application.routes.draw do
  get 'toppages/index'

  get 'tasks/create'

  get 'tasks/destroy'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/create'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  root to: 'tasks#index'
  
  get 'signup', to: 'users#new'
  resources :tasks
  resources :users, only: [:index, :show, :new, :create]
end
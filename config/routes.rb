Rails.application.routes.draw do
  root to: 'events#index'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/logout' => 'session#destroy'

  get 'events/index', to: 'events#index'
  get 'events/show'
  get 'events/new'
  post 'events', to: 'events#create'

  get 'users/new' => 'users#new', as: :new_user
  get 'users/show'
  post 'users' => 'users#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

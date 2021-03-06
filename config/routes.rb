Rails.application.routes.draw do

  root to: 'events#index'

  get '/login', to: 'session#new'
  post '/login', to: 'session#create'
  delete '/logout', to: 'session#destroy'

  get 'events', to: 'events#index'
  get 'events/show/:id', to: 'events#show', as: :events_show
  get 'events/new'
  post 'events', to: 'events#create'

  get 'users/new', to: 'users#new', as: :new_user
  get 'users/show/:id', to: 'users#show', as: :users_show
  get 'users', to: 'users#index', as: :users_list
  post 'users', to: 'users#create'

  get 'attendances/new', to: 'attendances#new', as: :new_attendance
  post 'attendances/', to: 'attendances#create'
  post 'attendances/destroy', to: 'attendances#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

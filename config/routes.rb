Rails.application.routes.draw do
  get 'session/new'
  post 'session/create'
  get 'session/destroy'

  get 'events/index'
  get 'events/show'
  get 'events/new'
  post 'events/create'

  get 'users/new'
  get 'users/show'
  post 'users/create'

  root to: 'events#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

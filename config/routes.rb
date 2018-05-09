Rails.application.routes.draw do
  devise_for :users 
  get 'home/show', to: 'home#show', as: 'show_home'
  get '/', to: 'events#index', as: 'home'
  get 'events/new', to: 'events#new', as: 'new_event'
  get '/user/:id/show', to: 'users#show', as: 'current_user'
  post '/events/new', to: 'events#create'
  get '/events/:id/show', to: 'events#show', as: 'event_show'
  post '/event/:id/suscribe', to: 'events#suscribe', as: 'suscribe'
  get '/event/:id/invite', to: 'events#share_invite', as:'invite'
  post '/event/invite', to: 'events#share_invite', as: 'share_invite'
  get '/users/:id/view_user', to: 'users#view_user', as: 'user_show'
  

  get 'events/show'
  get 'events/create'
  get 'home/index'

  resources :charges, only: [:new, :create]

 
end


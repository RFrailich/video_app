Rails.application.routes.draw do
  devise_for :users
  get 'sessions/new'
   get '/videos', to: 'videos#index'
   post '/videos', to: 'videos#index'
   resources :videos
   root :to => 'videos#index'
end

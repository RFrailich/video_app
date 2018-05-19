Rails.application.routes.draw do
   get '/videos/index'
   resources :videos
   root 'videos#index'
end

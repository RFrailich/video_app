Rails.application.routes.draw do
   get '/videos/:id', to: 'videos#show', as: 'videos_show'
   resources :videos
   root :to => 'videos#display_rand'
end

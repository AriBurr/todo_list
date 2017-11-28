Rails.application.routes.draw do

  root 'static_pages#home'
  resources :items

  get '/todos/complete', to: 'items#complete', as: 'sort_complete'
  get '/todos/incomplete', to: 'items#incomplete', as: 'sort_incomplete'

end

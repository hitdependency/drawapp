Rails.application.routes.draw do

  get 'users/new'
  post '/signup',  to: 'users#create'
  resources :users

  get 'startpage/index'

  root 'startpage#index'

end

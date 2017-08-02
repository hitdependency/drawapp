Rails.application.routes.draw do

  get 'startpage/index'
  get '/registration', to: 'startpage#registration'

  root 'startpage#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get '/', to: 'phrase#index'
  get '/new', to: 'phrase#new'
  post '/create/phrase5', to: 'phrase#create5'
  post '/create/phrase7', to: 'phrase#create7'
  post '/create/phrase5b', to: 'phrase#create5b'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

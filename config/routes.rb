Rails.application.routes.draw do
  get '/', to: 'phrase#index'
  post '/create/phrase5', to: 'phrase#create5'
  post '/create/phrase7', to: 'phrase#create7'
  post '/create/phrase5b', to: 'phrase#create5b'
end

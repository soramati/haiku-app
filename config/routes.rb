Rails.application.routes.draw do
  get '/', to: 'phrase#index'
  get '/new', to: 'phrase#new'
  post '/create', to: 'phrase#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#new'
  get '/todos/new', to: 'pages#create'
  get '/todos', to: 'pages#list', as: "list"
  post '/todos', to: 'pages#creator', as: "todos"
  resources :todo
end

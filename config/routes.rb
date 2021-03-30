Rails.application.routes.draw do

  # CRUD
  # CREATE, READ, UPDATE, DELETE
  # read all the tasks
  get '/tasks', to: 'tasks#index'
  # read one task
  get '/tasks/:id', to: 'tasks#show'
  # create a task
  get '/tasks/new', to: 'tasks#new' #display the form
  post '/tasks', to: 'tasks#create'
  # update a task
  get '/tasks/:id/edit', to: 'tasks#edit'
  patch '/tasks/:id', to: 'tasks#update'
  # destroy a task
  delete '/tasks/:id', to: 'tasks#destroy'

  # resources :tasks

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

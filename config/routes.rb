Rails.application.routes.draw do

  # CRUD
  # CREATE, READ, UPDATE, DELETE
  # read all the tasks
  get '/tasks', to: 'tasks#index', as: "tasks"

  # create a task

  post '/tasks', to: 'tasks#create'
  get '/tasks/new', to: 'tasks#new', as: "new_task" #display the form

  # update a task
  get '/tasks/:id/edit', to: 'tasks#edit', as: "edit_task"

  # read one task
  get '/tasks/:id', to: 'tasks#show', as: "task"




  patch '/tasks/:id', to: 'tasks#update'
  # destroy a task
  delete '/tasks/:id', to: 'tasks#destroy'

  # resources :tasks

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end



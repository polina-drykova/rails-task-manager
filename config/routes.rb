Rails.application.routes.draw do
  resources :tasks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Adding CRUD routs:
  # verb "/somewhere", to: "controllerS#action", alis
  # Read all taks:
  # get '/tasks', to: 'tasks#index', as: 'tasks'
  # Read one task:
  # get '/tasks/:id', to: 'tasks#show', as: 'task'
  # Create:
  # get '/tasks/new', to: 'tasks#new', as: 'new_task'
  # post '/tasks', to: 'tasks#create'
  # Update:
  # get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  # patch '/tasks/:id', to: 'tasks#update'
  # Delete:
  # delete '/tasks/:id', to: 'tasks#destroy'
end

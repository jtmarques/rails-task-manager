Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # list all tasks
  get 'tasks', to: 'tasks#index'

  # creation of a task
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'

  # show a selected task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # edit(update) task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # remove(delete) task
  delete 'tasks/:id', to: 'tasks#destroy'
end

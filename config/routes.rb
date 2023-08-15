Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # list all tasks
  get 'tasks', to: 'tasks#index'

  # show a selected task (might need to add as:task later?)
  get 'tasks/:id', to: 'tasks#show', as: :task
end

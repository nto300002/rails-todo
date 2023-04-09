Rails.application.routes.draw do
  # get 'todo_items/index'
  # get 'todo_items/create'
  # get 'todo_items/update'
  # get 'todo_items/destroy'

  resources :todo_items
  root to: 'todo_items#index'
end

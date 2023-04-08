Rails.application.routes.draw do
  get 'todo_items/index'
  get 'todo_items/create'
  get 'todo_items/update'
  get 'todo_items/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

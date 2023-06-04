Rails.application.routes.draw do
  get "tasks" => "tasks#index"
  get "tasks/new" => "tasks#new"
  post "tasks/create" => "tasks#create"
  get "tasks/:id/edit" => "tasks#edit"
  patch "tasks/:id" => "tasks#update"
  delete "tasks/:id" => "tasks#destroy"

  # Defines the root path route ("/")
  # root "articles#index"
end

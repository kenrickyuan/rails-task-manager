Rails.application.routes.draw do
  get "tasks", to: "tasks#list"
  post "tasks", to: "tasks#create"
  get "tasks/new", to: "tasks#new"
  get "tasks/:id", to: "tasks#find", as: :task
  get "tasks/:id/edit", to: "tasks#edit", as: :task_edit
  patch "tasks/:id", to: "tasks#update"
  delete "tasks/:id", to: "tasks#destroy"
end

# can try resources

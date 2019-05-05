Rails.application.routes.draw do
  resources :students, only: [:show, :new, :create, :edit, :update, :index, :search]

  resources :classrooms, only: [:show, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

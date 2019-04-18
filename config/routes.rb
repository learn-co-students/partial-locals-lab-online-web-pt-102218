Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :classroom
  # resources :student
  get "students/index", to: "students#index", as: "students"
  get "students/:id", to: "students#show", as: "student"
end

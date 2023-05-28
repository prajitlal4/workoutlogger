Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :workouts

  # Defines the root path route ("/")
  root "workouts#index"
end

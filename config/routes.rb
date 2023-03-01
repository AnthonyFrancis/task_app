Rails.application.routes.draw do
  resources :subprojects
  resources :projects
  devise_for :users
  root to: "pages#index"
  get "people" => "pages#people"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

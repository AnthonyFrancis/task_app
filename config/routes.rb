Rails.application.routes.draw do
  
  resources :projects do
      resources :subprojects
  end
  devise_for :users
  root to: "pages#index"
  get "people" => "pages#people"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

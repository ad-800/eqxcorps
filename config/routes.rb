Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  root to: "pages#home"
  resources :storyrooms, only: [:show, :create]

  # API V1
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :stories, only: :show
      resources :sentences, only: :create
    end
  end
end

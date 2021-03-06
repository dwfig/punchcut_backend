Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :roles
      resources :articles
      resources :users
      post "/login", to: "auth#create"
      get "/auto_login", to: "auth#auto_login"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

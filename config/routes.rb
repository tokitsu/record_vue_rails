Rails.application.routes.draw do
  get 'signup/create'
  root to: 'home#index'

  namespace :api do
    namespace :v1 do
      resources :records
      resources :artists
    end
  end

  post "refresh", controller: :refresh, action: :create
  post "signin", controller: :refresh, action: :create
  post "signup", controller: :refresh, action: :create
  delete "signin", controller: :signin, action: :create

end

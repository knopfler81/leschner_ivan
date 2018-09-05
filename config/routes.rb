Rails.application.routes.draw do
  resources :guitars
  root to: 'home#index'
  resources :finished_guitars


  get    "/admin",  to: "sessions#new"
  post   "/login",  to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end

Rails.application.routes.draw do
  root to: 'home#index'
  resources :finished_guitars
  resources :attachments

  get    "/admin",  to: "sessions#new"
  post   "/login",  to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end

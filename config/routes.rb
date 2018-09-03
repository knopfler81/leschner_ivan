Rails.application.routes.draw do
  root to: 'home#index'
  resources :finished_guitars
  resources :attachments
end

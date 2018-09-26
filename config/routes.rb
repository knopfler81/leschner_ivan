Rails.application.routes.draw do
  root to: 'home#index'
  resources :finished_guitars
  resources :videos
  resources :progresses

  resource :customization, only: [:show, :update], controller: "customization" do 
     member do
      get :reset
    end
  end

  get    "/admin",  to: "sessions#new"
  post   "/login",  to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  resources :finished_guitars do
    resources :attachments, :only => [:create, :destroy]
  end

   resources :progresses do
    resources :pictures, :only => [:create, :destroy]
  end
end

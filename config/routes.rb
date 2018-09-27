Rails.application.routes.draw do

  resources :comments
  resources :messages
  devise_for :users
  
  root to: 'home#index'
  resources :finished_guitars
  resources :videos
  resources :progresses

  resources :messages do 
    resources :comments 
  end

  resource :customization, only: [:show, :update], controller: "customization" do 
     member do
      get :reset
    end
  end

 devise_scope :user do 
    get    "/login",  to: "devise/sessions#new"
    post   "/signin",  to: "devise/sessions#create"
    delete "/logout", to: "devise/sessions#destroy"
  end

  resources :finished_guitars do
    resources :attachments, :only => [:create, :destroy]
  end

   resources :progresses do
    resources :pictures, :only => [:create, :destroy]
  end
end

Rails.application.routes.draw do

  devise_for :users
  
  root to: 'home#index'
  get "/documentation", to: "home#documentation"
  resources :finished_guitars
  resources :videos
  resources :progresses

  resources :contacts, only: [:new, :create]


  resource :customization, only: [:show, :update], controller: "customization" do 
     member do
      get :reset
    end
  end

 devise_scope :user do 
    get    "/admin",  to: "devise/sessions#new"
    post   "/signin",  to: "devise/sessions#create"
    delete "/logout", to: "devise/sessions#destroy"
  end

  resources :finished_guitars do
    resources :attachments, :only => [:create, :destroy]
  end

   resources :progresses do
    resources :pictures, :only => [:create, :destroy]
  end

  #la fonction message et comment est mise de côté, on garde si besoin...

  #resources :comments
  #resources :messages
  # resources :messages do 
  #   resources :comments 
  # end
end

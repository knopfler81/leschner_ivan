Rails.application.routes.draw do
  root to: 'home#index'
  resources :finished_guitars
  resources :videos
  resources :progresses

  get    "/admin",  to: "sessions#new"
  post   "/login",  to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  resources :finished_guitars do
    resources :attachments, :only => [:create, :destroy] # support #create and #destroy
  end

   resources :progresses do
    resources :pictures, :only => [:create, :destroy] # support #create and #destroy
  end

end

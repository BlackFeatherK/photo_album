Rails.application.routes.draw do
  root "photos#index"
  
  resources :photos do
    member do
      post :is_public
    end
  end
end

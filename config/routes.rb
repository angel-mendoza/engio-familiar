Rails.application.routes.draw do

  root 'welcome#index'
  

  resources :products do
    resources :comments
  end
  
  devise_for :users
  resources :recipes



  
end

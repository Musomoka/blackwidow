Rails.application.routes.draw do

  
  get 'home/index'
  get 'home/about'
  get 'home/contact'
  root "home#index"
  devise_for :users do
    resources :mentors
    
  end
  resource :businesses  do
    resources :tasks
  end
  get '/users/:id', to: 'users#show' 
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  
   
  
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
 


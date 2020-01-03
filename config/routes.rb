Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "admin#index"
  resources :admin, only:[:index] 
  # 	resources :users
  # end
  resources :rides do
  	resources :ride_requests	
  end
  resources :users
  get 'users/dashboard', :to => 'users#dashboard_show'
end

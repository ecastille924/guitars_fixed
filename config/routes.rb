Rails.application.routes.draw do
  get 'technicians/new'
  get 'technicians/create'
  get 'technicians/show'
  get 'technicians/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :repair_bills

  get '/auth/google_oauth2/callback', to: 'sessions#omniauth'
  
  #get 'repair_bills', to: 'repair_bills#index', as: 'repair_bills'
  #get 'repair_bills/:id', to: 'repair_bills#show', as: 'repair_bill'

end


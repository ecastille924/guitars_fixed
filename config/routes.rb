Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :technicians, only: [:new, :create, :show, :index]
  resources :repair_bills

  get '/auth/google_oauth2/callback', to: 'sessions#omniauth'
  
  #get 'repair_bills', to: 'repair_bills#index', as: 'repair_bills'
  #get 'repair_bills/:id', to: 'repair_bills#show', as: 'repair_bill'

end


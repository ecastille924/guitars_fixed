Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :technicians do
    resources :reviews, only: [:index, :new, :show]
  end

  resources :reviews, only: [:index, :new, :show]
  
  root 'sessions#welcome'
  get '/technicians/top_tech', to: 'technicians#top_tech' 
  
  
  
  resources :repair_bills
  resources :users 
  post '/repair_bills/:id/edit', to: 'repair_bills#edit'
  

  #resources :sessions
  get '/auth/google_oauth2/callback', to: 'sessions#omniauth'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

#post '/signup', to: 'users#create'
#get '/user/:id', to: 'users#show', as: 'user'
  
  #get 'repair_bills', to: 'repair_bills#index', as: 'repair_bills'
  #get 'repair_bills/:id', to: 'repair_bills#show', as: 'repair_bill'

end


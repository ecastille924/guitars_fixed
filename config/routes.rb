Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'sessions#welcome'
  get '/technicians/top_tech', to: 'technicians#top_tech'
  
  get '/repair_bills/ordered_by_year', to: 'repair_bills#ordered_by_year'

  resources :technicians, only: [:create, :index, :new, :show] do
    resources :reviews
  end

  resources :reviews
  resources :repair_bills
  

  resources :users 
  
  post '/repair_bills/:id/edit', to: 'repair_bills#edit'
  
  get '/auth/google_oauth2/callback', to: 'sessions#omniauth'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'


end


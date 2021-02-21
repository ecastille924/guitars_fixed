Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #resources :repair_bills
  
  get 'repair_bills', to: 'repair_bills#index', as: 'repair_bills'
  get 'repair_bills/:id', to: 'repair_bills#show', as: 'repair_bill'

end


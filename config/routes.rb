Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  # a ordem importa 
  resources :phones
  resources :addresses
  resources :contacts #, except: [:edit]
  resources :kinds
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

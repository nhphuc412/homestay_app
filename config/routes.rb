Rails.application.routes.draw do
 
  
  resources :room_facilities
  resources :bath_types
  resources :bed_types
  resources :rooms
  resources :room_types
  resources :home_facilities
  resources :facilities
  resources :m_cities
  resources :m_prefs
  resources :home_rules
  resources :rules
  resources :homes
  resources :home_types
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.
  #api
  mount API => '/'
  #end api
end

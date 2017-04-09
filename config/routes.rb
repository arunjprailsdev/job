Rails.application.routes.draw do
  resources :rrbs
  resources :upscs
  resources :banks
  resources :tnpscs
  devise_for :users
  resources :joblists
	root 'joblists#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

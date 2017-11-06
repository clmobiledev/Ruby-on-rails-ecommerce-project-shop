Rails.application.routes.draw do
  root to: 'home#index'
	resources :games,      only: [:index, :show]
  resources :developers, only: [:index, :show]
  resources :genres,     only: [:index, :show]
  resources :abouts,     only: [:index, :show]
  resources :contacts,   only: [:index, :show]
  
  get 'search_results' => 'games#search_results', as: 'search_results'
  
  get 'abouts/index'
  get 'contacts/index'

  get 'genres/index'
  get 'genres/show'

  get 'developers/index'
  get 'developers/show'

  get 'games/index'
  get 'games/show'

  get 'home/index'
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'genres/index'

  get 'genres/show'

  get 'developers/index'

  get 'developers/show'

  get 'games/index'

  get 'games/show'

  get 'home/index'

  root to: 'home#index'
	resources :games, only [:index, :show]
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  root "venues#index"
  devise_for :users

  resources :venues
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

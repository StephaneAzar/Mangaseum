Rails.application.routes.draw do
  resources :seinens
  resources :kodomos
  resources :shojos
  resources :mangas
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

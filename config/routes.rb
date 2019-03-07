Rails.application.routes.draw do
  resources :mangas
  root to: 'mangas#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

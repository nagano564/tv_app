Rails.application.routes.draw do  
  
  root 'shows#index'
  get 'shows/about'
  get 'movies/index'

  get 'shows/search', to: 'shows#search'
  resources :shows, only: [:index, :show]
  resources :movies, only: [:index, :show]

  # get 'movies/search'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

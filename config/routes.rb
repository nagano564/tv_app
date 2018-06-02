Rails.application.routes.draw do  

  root 'shows#index'

  # resources :shows, only: [:index, :show]
  # get 'shows/search'

  get 'shows/show'
  get 'shows/search'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

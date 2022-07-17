Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root :to => 'home#index'
  resources :about, :apps, :home, :quote, :images, :languages, :reviews, :jobs

  get '/newJob', to: 'jobs#newJob'
  post '/newJob', to: 'jobs#newJob'
  get '/googlePlaces', to: 'googleplaces#searchPlace'
  get '/googlePlacesRandom', to: 'googleplaces#randomPlaces'
  get '/googleAutoComplete', to: 'googleplaces#autoComplete'
  get '/allItems', to: 'items#getAllItems'
  get '/singleItem', to: 'items#getSingleItem'
  get '/newItem', to: 'items#saveNewItem'
end

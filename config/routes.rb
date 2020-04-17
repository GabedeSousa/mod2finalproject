Rails.application.routes.draw do
  resources :exchanges, only: [:show, :create]
  get '/listings/new_road', to: 'listings#new_road', as: 'newroad'
  get '/listings/new_mountain', to: 'listings#new_mountain', as: 'newmountain'
  get '/listings/:id/edit_road', to: 'listings#edit_road', as: 'editroad'
  get '/listings/:id/edit_mountain', to: 'listings#edit_mountain', as: 'editmountain'
  post '/exchanges/:id', to: 'exchanges#add_like'
  resources :listings, only: [:create, :show, :update] do 
    resources :comments
  end
  resources :products, only: [:show] do
    resources :reviews
  end
  get '/', to: 'products#index', as: 'home'
  resources :users, only: [:new, :create, :show, :edit, :update]
  get '/users/:id/add', to: 'users#add', as: 'addmoney'
  post '/users/:id', to: 'users#add_money'
  post '/login', to: 'sessions#create'
  match '/logout', to: 'sessions#destroy', via: :delete
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

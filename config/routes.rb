Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'users/new'

  get 'users/create'

  root 'home#index'
  
  resources :users
  
  resources :sessions, only: [:new, :create, :destroy]
  
  get 'home/index'

  get 'home/new'

  post 'home/create' => 'home#create', as: 'posts'
  
  get 'home/destroy/:post_id' => 'home#destroy' ,as: 'post_destroy'
  
  get 'home/edit/:post_id' => 'home#edit'  
  
  patch 'home/update/:post_id'=> 'home#update' ,as:'post'
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

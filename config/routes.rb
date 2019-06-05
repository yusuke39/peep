Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, controllers:{
    sessions: 'devise/sessions'
  }
  devise_scope :user do
    get 'users/destroy', to: 'devise/sessions#destroy'
    get 'users/index', to: 'devise/sessions#index'
  end
  root 'peep#index'
  resources :address, only: [:index, :new, :create]
  resources :mypage, only:[:index, :destroy, :edit]
  resources :tweet
  resources :like, only:[:index, :destroy]
  post '/like/:id' => 'like#create', as: 'iine'
end

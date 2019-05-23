Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, controllers:{
    sessions: 'devise/sessions'
  }
  devise_scope :user do
    get 'users/destroy', to: 'devise/sessions#destroy'
  end
  root 'peep#index'
  resources :address, only: [:index, :new, :create]
end

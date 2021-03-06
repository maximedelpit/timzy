Rails.application.routes.draw do

 devise_for :users, controllers: {
        registrations: 'users/registrations'
      }

  root to: 'pages#home'

  resources :teams do
    resources :teammates, only: [ :new, :create, :list ]
    resources :projects, only: [ :new, :create ]
  end

  resources :projects, only: [ :show, :edit, :update, :destroy] do
       resources :comments, only: [ :new, :create, :destroy]
  end

  resources :comments, only: [ :index, :edit, :update, :destroy]

end

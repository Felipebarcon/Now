Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :goals, only: [:new, :create, :update, :show] do
    resources :tasks, only: [:new, :create, :update]
  end
  get 'goals/:id/summary', to: 'goals#summary', as: 'summary'
  get '/dashboard', to: 'goals#dashboard', as: 'dashboard'

  resources :events, only: [:new, :create, :index, :show] do
    resources :registrations, only: [:create]
  end
end

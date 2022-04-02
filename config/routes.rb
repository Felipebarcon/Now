Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :goals, only: [:new, :create, :update]
  get 'goals/:id/summary', to: 'goals#summary', as: 'summary'
  get 'goals/dashboard', to: 'goals#dashboard', as: 'dashboard'

  resources :events, only: [:new, :create, :index, :show] do
    resources :registrations, only: [:create]
    resources :comments, only: [:create]
  end
end

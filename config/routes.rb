Rails.application.routes.draw do
  resources :vendas
  resources :atendentes
  resources :medicamentos

  get 'home/index'
  root 'home#index'

  get 'export_csv', to: 'export#export_csv'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end

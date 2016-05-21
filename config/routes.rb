Rails.application.routes.draw do
  root to: "clients#index"
  get 'pages/home'

  devise_for :users
  resources :clients do
    resources :inspections
  end

end

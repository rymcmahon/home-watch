Rails.application.routes.draw do
  root to: "pages#home"
  get 'pages/home'

  devise_for :users
  resources :clients do
    resources :inspections
  end

end

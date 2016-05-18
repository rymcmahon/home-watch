Rails.application.routes.draw do
  devise_for :users
  resources :clients do
    resources :inspections
  end

  root to: "clients#index"
end

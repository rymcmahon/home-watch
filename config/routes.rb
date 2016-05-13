Rails.application.routes.draw do
  resources :clients do
    resources :inspections
  end
end

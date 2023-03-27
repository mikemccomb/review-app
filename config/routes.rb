Rails.application.routes.draw do
  root "categories#index"

  resources :entries
  resources :subjects
  resources :categories
end

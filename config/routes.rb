Rails.application.routes.draw do
  root "categories#index"

  resources :entries, except: :index
  resources :subjects
  resources :categories
end

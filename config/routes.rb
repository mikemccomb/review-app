Rails.application.routes.draw do
  root "categories#index"

  resources :subjects do
    resources :entries
  end
  resources :categories
end

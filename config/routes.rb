Rails.application.routes.draw do
  root "categories#index"

  resources :subjects do
    resources :entries, except: :index
  end
  resources :categories
end

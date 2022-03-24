Rails.application.routes.draw do
  namespace :admin do
    root "application#index"

    resources :projects, except: [:index, :show]
  end
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "projects#index"
  resources :projects, only: [:index, :show] do
    resources :tickets
  end
end

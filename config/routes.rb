Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :cocktails, only: [:index, :create, :show, :new] do
    resources :doses, only: [:new, :create, :delete, :show]
  end
end

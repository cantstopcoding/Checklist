Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "checklists#index"
  

  resources :checklists, only: [:index, :new, :create]
end

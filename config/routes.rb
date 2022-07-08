Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "omniauth" }
  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :resumes
  # root "resumes#index"
  root "welcomes#index"
end

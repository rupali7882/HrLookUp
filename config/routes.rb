Rails.application.routes.draw do

  devise_for :users, controllers: {registrations: "registrations"}

  devise_scope :user do
      root 'home#index', as: :authenticated_root
      root 'devise/sessions#new', as: :unauthenticated_root   
  end

  resources :employees
  resources :entitlements
end

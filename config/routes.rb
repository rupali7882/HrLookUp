Rails.application.routes.draw do

  devise_for :users, controllers: {registrations: "registrations"}

  devise_scope :user do
      root 'home#index', as: :authenticated_root
      root 'devise/sessions#new', as: :unauthenticated_root
  end

  get 'employees/search', to: "employees#index"

  resources :employees 
  resources :entitlements
  resource :users do
  	patch :upload_profile, on: :collection
  end
  resources :payroll do
    get :timesheet, on: :collection
    post :import, on: :collection
  end
end

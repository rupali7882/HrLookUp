Rails.application.routes.draw do

  devise_for :users, :controllers => {:registrations => "registrations"}
  devise_scope :user do
    root 'devise/sessions#new'
  end

  resources :employees
end

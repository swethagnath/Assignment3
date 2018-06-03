Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
  	authenticated :user do
      root to: 'companies#index'
    end
  	unauthenticated  do
     root to: "companies#new"
    end
  end
  resources :companies
  resources :questions
  resources :answers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :registrations
  resources :races
  resources :boats
  get '/users/sign_out' => 'devise/sessions#destroy'
  devise_for :users, path: 'devise', controllers: { sessions: 'users/sessions' }
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'
end

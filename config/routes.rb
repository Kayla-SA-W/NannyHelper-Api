# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
    resources :families, only: %i[index show create update destroy]
    resources :ratings, only: %i[index show create update destroy]
    resources :users, only: %i[index show create update destroy]

    root to: 'families#index'
  end
  resources :ratings, except: %i[new edit]
  resources :families, except: %i[new edit]
  # RESTful routes
  resources :examples, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end

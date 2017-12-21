Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }
  root :to => 'posts#index'

  resources :charges

  resources :posts do
    resources :comments, :except => [:show, :index]
  end


end

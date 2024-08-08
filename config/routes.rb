Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'devise/sessions',
    registrations: 'devise/registrations'
  }
  
  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
  end


  root "homes#top"

  get "/home/about" => "homes#about"
  resources :users
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
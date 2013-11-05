Todolistapp::Application.routes.draw do
  devise_for :users, :token_authentication_key => 'authentication_key'

  root :to => "items#index"

  resources :items
  resources :users

end

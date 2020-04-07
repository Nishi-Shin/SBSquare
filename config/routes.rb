Rails.application.routes.draw do
  root 'pages#home'
  get '/home', to:'pages#home'
  devise_for :users
  root 'tweets#index'
    resources :tweets do
    resources :comments, only: [:create]
  end
  resources :tweets                     #tweets_controllerに対してのresourcesメソッド
  resources :users, only: [:show]       #users_controllerに対してのresourcesメソッド
end

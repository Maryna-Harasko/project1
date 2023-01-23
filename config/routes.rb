Rails.application.routes.draw do
  devise_for :users
  resources :twitts, only: %i[index new edit create update destroy]

  root 'twitts#index'
end

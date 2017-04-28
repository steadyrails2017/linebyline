Rails.application.routes.draw do
  devise_for :users

  root  'displays#index'
  resources :displays

end

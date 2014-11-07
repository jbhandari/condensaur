Rails.application.routes.draw do
  root 'urls#new'

  resources :urls, only: [:create]
end

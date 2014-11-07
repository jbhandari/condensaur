Rails.application.routes.draw do
  root 'urls#new'

  resources :urls, only: [:create, :show]
  resource :concise, only: [:show], path:''
end

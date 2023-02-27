Rails.application.routes.draw do
  devise_for :users
  resources :pics
  root "pics#index"
  delete 'pics/:id', to: 'pics#destroy'
end

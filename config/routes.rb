Rails.application.routes.draw do
  resources :pics
  root "pics#index"
  delete 'pics/:id', to: 'pics#destroy'
end

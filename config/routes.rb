Rails.application.routes.draw do
  root 'pages#home'
  resources :clients
  resources :invoices
end

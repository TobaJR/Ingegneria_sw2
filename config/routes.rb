Rails.application.routes.draw do
  resources :clients 
      resources :invoices
end
